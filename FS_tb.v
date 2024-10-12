module fs_tb;
    reg A;             
    reg B;            
    reg Borrow_in;    
    wire Diff;        
    wire Borrow_out; 
    fs uut ( .A(A), .B(B), .Borrow_in(Borrow_in), .Diff(Diff), .Borrow_out(Borrow_out) );
    initial begin
        A = 0; B = 0; Borrow_in = 0; #10;
        A = 0; B = 0; Borrow_in = 1; #10;
        A = 0; B = 1; Borrow_in = 0; #10;
        A = 0; B = 1; Borrow_in = 1; #10;
        A = 1; B = 0; Borrow_in = 0; #10;
        A = 1; B = 0; Borrow_in = 1; #10;
        A = 1; B = 1; Borrow_in = 0; #10;
        A = 1; B = 1; Borrow_in = 1; #10;
        $finish;
    end

endmodule
