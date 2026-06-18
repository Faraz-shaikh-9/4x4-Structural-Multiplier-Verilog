`timescale 1ns/1ps

module tb_newmult_4x4;

    reg  [3:0] A;
    reg  [3:0] B;

    wire [7:0] Product;

    newmult_4x4 uut(
        .A(A),
        .B(B),
        .Product(Product)
    );

    initial begin

        $dumpfile("newmult_4x4.vcd");
        $dumpvars(0, tb_newmult_4x4);

        $monitor("A=%d B=%d Product=%d", A, B, Product);

        A=0;  B=0;  #10;
        A=2;  B=3;  #10;
        A=5;  B=5;  #10;
        A=10; B=10; #10;
        A=15; B=15; #10;

        $finish;

    end

endmodule