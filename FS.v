module fs (
   input A,          
    input B,           
    input Borrow_in,   
    output Diff,      
    output Borrow_out);
    assign Diff = A ^ B ^ Borrow_in;
  assign Borrow_out = (~A & B) | ((~A | B) & Borrow_in);
endmodule
