module somador_subtrator(
    input  [7:0] a,
    input  [7:0] b,
    input        sel,       // 0: soma | 1: subtração
    output [7:0] result,
    output       cout
);

    wire [7:0] b_invertido;
    wire [7:0] b_final;

    // Inversor de b, caso sel == 1
    inversor_8bits inv (
        .entrada(b),
        .saida(b_invertido)
    );

    // Seleciona entre b ou ~b
    assign b_final = (sel == 1'b1) ? b_invertido : b;

    // Somador de 8 bits, com carry-in vindo de sel
    somador_8bits somador (
        .A(a),
        .B(b_final),
        .cin(sel),       // carry-in = sel
        .S(result),
        .cout(cout)
    );

endmodule
