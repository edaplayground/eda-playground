//----------------------------------------------------------------------
//   Copyright 2013 Cadence Design Systems, Inc. 
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

// abstract visitor class
// visit() will be invoked for every node of the visited structure
virtual class uvm_visitor#(type NODE=uvm_component) extends uvm_object;
	function new (string name = "");
		super.new(name);
	endfunction 
	virtual function void begin_v(); endfunction
	virtual function void end_v(); endfunction

	pure virtual function void visit(NODE node);
endclass

// a wrapper which can return the immediate children for an instance of type STRUCTURE
virtual class uvm_structure_proxy#(type STRUCTURE=uvm_component) extends uvm_object;
	function new (string name = "");
		super.new(name);
	endfunction     
	pure virtual function void get_immediate_children(STRUCTURE s, ref STRUCTURE children[$]);
endclass    

// the visitor adapter traverses the nodes of STRUCTURE and invokes
// the visitor's visit() function for every visited node
virtual class uvm_visitor_adapter#(type STRUCTURE=uvm_component,VISITOR=uvm_visitor#(STRUCTURE)) extends uvm_object;
	pure virtual function void accept(STRUCTURE s, VISITOR v,uvm_structure_proxy#(STRUCTURE) p, bit invoke_begin_end=1);
	function new (string name = "");
		super.new(name);
	endfunction 
endclass

// top down traversal visits the parent before the direct children
class uvm_top_down_visitor_adapter#(type STRUCTURE=uvm_component,VISITOR=uvm_visitor#(STRUCTURE)) extends 
	uvm_visitor_adapter#(STRUCTURE,VISITOR);
	function new (string name = "");
		super.new(name);
	endfunction         
	virtual function void accept(STRUCTURE s, VISITOR v,uvm_structure_proxy#(STRUCTURE) p, bit invoke_begin_end=1);
		STRUCTURE c[$];

		if(invoke_begin_end)
			v.begin_v();

		v.visit(s);
		p.get_immediate_children(s, c);

		foreach(c[idx])
			accept(c[idx],v,p,0);

		if(invoke_begin_end)
			v.end_v();

	endfunction
endclass

// bottom traversal visits the direct children before the parent
class uvm_bottom_up_visitor_adapter#(type STRUCTURE=uvm_component,VISITOR=uvm_visitor#(STRUCTURE)) extends 
	uvm_visitor_adapter#(STRUCTURE,VISITOR);
	function new (string name = "");
		super.new(name);
	endfunction         
	virtual function void accept(STRUCTURE s, VISITOR v,uvm_structure_proxy#(STRUCTURE) p, bit invoke_begin_end=1);
		STRUCTURE c[$];

		if(invoke_begin_end)
			v.begin_v();

		p.get_immediate_children(s, c);
		foreach(c[idx])
			accept(c[idx],v,p,0);

		v.visit(s);

		if(invoke_begin_end)
			v.end_v();

	endfunction
endclass

// visits all nodes with a distance N from the root first before visiting nodes with a distance (N+1)
class uvm_by_level_visitor_adapter#(type STRUCTURE=uvm_component,VISITOR=uvm_visitor#(STRUCTURE)) extends 
	uvm_visitor_adapter#(STRUCTURE,VISITOR);
	function new (string name = "");
		super.new(name);
	endfunction         
	virtual function void accept(STRUCTURE s, VISITOR v,uvm_structure_proxy#(STRUCTURE) p, bit invoke_begin_end=1);
		STRUCTURE c[$];
		c.push_back(s);

		if(invoke_begin_end)
			v.begin_v();

		while(c.size() > 0) begin
			STRUCTURE q[$];
			foreach(c[idx]) begin
				STRUCTURE t[$]; 

				v.visit(c[idx]);
				p.get_immediate_children(c[idx], t);
				q = {q,t};
			end 
			c=q;
		end 

		if(invoke_begin_end)
			v.end_v();
	endfunction
endclass

// simple component traversal   
class uvm_component_proxy extends uvm_structure_proxy#(uvm_component);
	virtual function void get_immediate_children(STRUCTURE s, ref STRUCTURE children[$]);   
		s.get_children(children);   
	endfunction

	function new (string name = "");
		super.new(name);
	endfunction 
endclass

	
  // local function to check the name constraints on component names
  // a legal name
  // - allowed charset "A-z:_0-9[](){}-: "
  // - whitespace-as-is, no-balacing delimiter semantic, no escape sequences
  // - path delimiter not allowed anywhere in the name
  //   
  // the check is coded here as a function to complete it in a single function call
  // otherwise save/restore issues with the used dpi could occur
  
class uvm_component_name_check_visitor extends uvm_visitor#(uvm_component);
	local uvm_root _root;

	virtual function string get_name_constraint();
		return "^[][[:alnum:](){}_:-]([][[:alnum:](){} _:-]*[][[:alnum:](){}_:-])?$";
	endfunction

	virtual function void visit(NODE node);
`ifndef UVM_NO_DPI
		static chandle compiled_regex;
		
		if(compiled_regex==null)
			compiled_regex=uvm_dpi_regcomp(get_name_constraint());  
		
		assert(compiled_regex!=null);
		
		// dont check the root component
		if(_root != node)
			if(uvm_dpi_regexec(compiled_regex, node.get_name())) 
				`uvm_warning("UVM/COMP/NAME",$sformatf("the name \"%s\" of the component \"%s\" violates the uvm component name constraints",node.get_name(),node.get_full_name()))
`endif
	endfunction 
	function new (string name = "");
		super.new(name);
	endfunction 

	virtual function void begin_v(); 
		uvm_coreservice_t cs = uvm_coreservice_t::get();
   
		_root =  cs.get_root();
`ifdef UVM_NO_DPI
		`uvm_info("UVM/COMP/NAMECHECK","This implementation of the component name checks requires DPI to be enabled",UVM_NONE)
`endif
	endfunction
	virtual function void end_v(); 
`ifndef UVM_NO_DPI
		uvm_dpi_regfree(visit.compiled_regex);
		visit.compiled_regex=null;  
`endif
	endfunction
endclass    
