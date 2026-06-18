module rca_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input        Cin,
    output [7:0] Sum,
    output       Cout
);

    wire [6:0] c;

    full_adder fa0 (
        .a(A[0]),
        .b(B[0]),
        .cin(Cin),
        .sum(Sum[0]),
        .cout(c[0])
    );

    full_adder fa1 (
        .a(A[1]),
        .b(B[1]),
        .cin(c[0]),
        .sum(Sum[1]),
        .cout(c[1])
    );

    full_adder fa2 (
        .a(A[2]),
        .b(B[2]),
        .cin(c[1]),
        .sum(Sum[2]),
        .cout(c[2])
    );

    full_adder fa3 (
        .a(A[3]),
        .b(B[3]),
        .cin(c[2]),
        .sum(Sum[3]),
        .cout(c[3])
    );

    full_adder fa4 (
        .a(A[4]),
        .b(B[4]),
        .cin(c[3]),
        .sum(Sum[4]),
        .cout(c[4])
    );

    full_adder fa5 (
        .a(A[5]),
        .b(B[5]),
        .cin(c[4]),
        .sum(Sum[5]),
        .cout(c[5])
    );

    full_adder fa6 (
        .a(A[6]),
        .b(B[6]),
        .cin(c[5]),
        .sum(Sum[6]),
        .cout(c[6])
    );

    full_adder fa7 (
        .a(A[7]),
        .b(B[7]),
        .cin(c[6]),
        .sum(Sum[7]),
        .cout(Cout)
    );


endmodule