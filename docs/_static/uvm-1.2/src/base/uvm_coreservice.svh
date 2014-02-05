//----------------------------------------------------------------------
//   Copyright 2013 Cadence Design Inc
//   All Rights Reserved Worldwide
//
//   Licensed under the Apache License, Version 2.0 (the
//   "License"); you may not use this file except in
//   compliance with the License.  You may obtain a copy of
//   the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in
//   writing, software distributed under the License is
//   distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
//   CONDITIONS OF ANY KIND, either express or implied.  See
//   the License for the specific language governing
//   permissions and limitations under the License.
//----------------------------------------------------------------------
typedef class uvm_factory;
typedef class uvm_default_factory;
typedef class uvm_report_server;
typedef class uvm_default_report_server;
typedef class uvm_root;
typedef class uvm_visitor;
typedef class uvm_component_name_check_visitor;
typedef class uvm_component;

typedef class uvm_tr_database;
typedef class uvm_text_tr_database;
   
`ifndef UVM_CORESERVICE_TYPE
`define UVM_CORESERVICE_TYPE uvm_default_coreservice_t
`endif

typedef class `UVM_CORESERVICE_TYPE;

//----------------------------------------------------------------------
// Class: uvm_coreservice_t
//
// The singleton instance of uvm_coreservice_t provides a common point for all central 
// uvm services such as factory, uvm_report_server, ...
// The service class provides a static ::get which return an instance adhering to uvm_coreservice_t
// the rest of the set_<facility> get_<facility> pairs provide access to the internal uvm services
//
// custom implementations of uvm_coreservice_t can be included in uvm_pkg::*. they cant reside in another package
// and can selected via the define UVM_CORESERVICE_TYPE
//----------------------------------------------------------------------

virtual class uvm_coreservice_t;
	// Function: get_factory
	//
	// returns the currently enabled uvm factory, 
	// when no factory has been set before instantiates a uvm_default_factory
	pure virtual function uvm_factory get_factory();

	// Function: set_factory
	//
	// sets the current uvm factory
	// please note: its upto the user to preserve the contents of the original factory or delegate calls to to the original factory 
	pure virtual function void set_factory(uvm_factory f);

	// Function: get_report_server
	// returns the current global report_server
	// if no report server has been set before returns an instance of
	// uvm_default_report_server
	pure virtual function uvm_report_server get_report_server();

	// Function: set_report_server
	// sets the central report server to ~server~
	pure virtual function void set_report_server(uvm_report_server server);

        // Function: get_default_tr_database
        // returns the current default record database
        //
        // If no default record database has been set before this method is
        // is called, returns an instance of <uvm_text_tr_database>
        pure virtual function uvm_tr_database get_default_tr_database();

        // Function: set_default_tr_database
        // Sets the current default record database
        //
        pure virtual function void set_default_tr_database(uvm_tr_database db);
   
	// Function: set_component_visitor
	// sets the component visitor to ~v~
	// this visitor is being used for the traversal at end_of_elaboration_phase
	// for instance for name checking
	pure virtual function void set_component_visitor(uvm_visitor#(uvm_component) v);
	
	// Function: get_component_visitor
	// retrieves the current component visitor 
	// see set_component_visitor
	pure virtual function uvm_visitor#(uvm_component) get_component_visitor();

	// Function: get_root
	//
	// returns the uvm_root instance
	pure virtual function uvm_root get_root();

	// Function: get
	//
	// returns an instance providing the uvm_coreservice_t interface
	// the actual type of the instance is determined by the define `UVM_CORESERVICE_TYPE
	//
	//| `define UVM_CORESERVICE_TYPE uvm_blocking_coreservice
	//| class uvm_blocking_coreservice extends uvm_coreservice_t;
	//|     virtual function void setFactory(uvm_factory f);
	//|         `uvm_error("FACTORY","you are not allowed to override the factory")
	//|   endfunction
	//| endclass
	//|
	local static `UVM_CORESERVICE_TYPE inst;
	static function uvm_coreservice_t get();
		if(inst==null)
			inst=new;

		return inst;
	endfunction // get

endclass

//----------------------------------------------------------------------
// Class: uvm_default_coreservice_t
//
// uvm_default_coreservice_t provides a default implementation of the 
// uvm_coreservice_t api. it instantiates uvm_default_factory, uvm_default_report_server, 
// uvm_root
//----------------------------------------------------------------------
class uvm_default_coreservice_t extends uvm_coreservice_t;
	local uvm_factory factory;

	virtual function uvm_factory get_factory();
		if(factory==null) begin
			uvm_default_factory f;
			f=new;
			factory=f;
		end 

		return factory;
	endfunction

	virtual function void set_factory(uvm_factory f);
		factory = f;
	endfunction 

        local uvm_tr_database tr_database;
        virtual function uvm_tr_database get_default_tr_database();
           if (tr_database == null) begin
	           process p = process::self();
	           uvm_text_tr_database tx_db;
	           string s;
	           if(p != null)
	           	s = p.get_randstate();
	           	
	           tx_db = new("default_tr_database");
               tr_database = tx_db;
              
              if(p != null)
              	p.set_randstate(s);
           end
           return tr_database;
        endfunction : get_default_tr_database

        virtual function void set_default_tr_database(uvm_tr_database db);
           tr_database = db;
        endfunction : set_default_tr_database
   
	local uvm_report_server report_server;
	virtual function uvm_report_server get_report_server();
		if(report_server==null) begin
			uvm_default_report_server f;
			f=new;
			report_server=f;
		end 

		return report_server;
	endfunction 

	virtual function void set_report_server(uvm_report_server server);
		report_server=server;
	endfunction 

	virtual function uvm_root get_root();
		return uvm_root::m_uvm_get_root();
	endfunction
	
	local uvm_visitor#(uvm_component) _visitor;
	virtual function void set_component_visitor(uvm_visitor#(uvm_component) v);
		_visitor=v;
	endfunction
	
	// Function: get_component_visitor
	// retrieves the current component visitor 
	// if unset(or null) returns a uvm_component_name_check_visitor instance
	virtual function uvm_visitor#(uvm_component) get_component_visitor();
		if(_visitor==null) begin
			uvm_component_name_check_visitor v = new("name-check-visitor");
			_visitor=v;
		end
		return _visitor;
	endfunction	
	
endclass

//------------------------------------------------------------------------------
// Variable: uvm_coreservice
//
// this is the root uvm core service provider which can be queried for various uvm services 
// like factory, report etc.
//------------------------------------------------------------------------------

const  uvm_coreservice_t uvm_coreservice = uvm_coreservice_t::get();
