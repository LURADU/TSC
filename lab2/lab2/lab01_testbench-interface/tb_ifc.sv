/***********************************************************************
 * A SystemVerilog testbench for an instruction register; This file
 * contains the interface to connect the testbench to the design
 **********************************************************************/
interface tb_ifc (input logic clk);
  

  // user-defined types are defined in instr_register_pkg.sv
  import instr_register_pkg::*;
  logic          load_en;
  logic          reset_n;
  opcode_t       opcode;
  operand_t      operand_a, operand_b;
  address_t      write_pointer, read_pointer;
  instruction_t  instruction_word;
  // ADD CODE TO DECLARE THE INTERFACE SIGNALS
 
 clocking cb @(posedge clk);
  output load_en;
  output operand_a;
  output operand_b;
  output opcode;
  output write_pointer;
  output read_pointer;
  output reset_n;
  input instruction_word;
endclocking;  

  modport TEST (clocking cb);
               
  
endinterface: tb_ifc

