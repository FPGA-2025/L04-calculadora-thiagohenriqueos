module somador_8bits (
    input  [7:0] A,
    input  [7:0] B,
    input        cin,
    output [7:0] S,
    output       cout
);
    wire [7:0] c;

    // Instanciação dos somadores completos
    somador_completo FA0 (A[0], B[0], cin,    S[0], c[0]);
    somador_completo FA1 (A[1], B[1], c[0],   S[1], c[1]);
    somador_completo FA2 (A[2], B[2], c[1],   S[2], c[2]);
    somador_completo FA3 (A[3], B[3], c[2],   S[3], c[3]);
    somador_completo FA4 (A[4], B[4], c[3],   S[4], c[4]);
    somador_completo FA5 (A[5], B[5], c[4],   S[5], c[5]);
    somador_completo FA6 (A[6], B[6], c[5],   S[6], c[6]);
    somador_completo FA7 (A[7], B[7], c[6],   S[7], cout);

endmodule
