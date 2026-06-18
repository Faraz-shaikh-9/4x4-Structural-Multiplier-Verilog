module newmult_4x4(

    input  [3:0] A,
    input  [3:0] B,
    output [7:0] Product
);

    wire [3:0] pp0;
    wire [3:0] pp1;
    wire [3:0] pp2;
    wire [3:0] pp3;

    wire [7:0] pp0_ext;
    wire [7:0] pp1_shift;
    wire [7:0] pp2_shift;
    wire [7:0] pp3_shift;

    wire [7:0] s1;
    wire [7:0] s2;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};


    assign pp0_ext  = {4'b0000, pp0};

    assign pp1_shift = ({4'b0000, pp1} << 1);

    assign pp2_shift = ({4'b0000, pp2} << 2);

    assign pp3_shift = ({4'b0000, pp3} << 3);    

    wire c1;

    rca_8bit add1(
        .A(pp0_ext),
        .B(pp1_shift),
        .Cin(1'b0),
        .Sum(s1),
        .Cout(c1)
    );

    wire c2;

    rca_8bit add2(
        .A(s1),
        .B(pp2_shift),
        .Cin(1'b0),
        .Sum(s2),
        .Cout(c2)
    );
    
    wire c3;

    rca_8bit add3(
        .A(s2),
        .B(pp3_shift),
        .Cin(1'b0),
        .Sum(Product),
        .Cout(c3)
    );

endmodule   