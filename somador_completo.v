module somador_completo (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    wire axorb;
    wire aandb;
    wire axorb_and_cin;

    xor (axorb, a, b);
    xor (sum, axorb, cin);

    and (aandb, a, b);
    and (axorb_and_cin, axorb, cin);
    or  (cout, aandb, axorb_and_cin);

endmodule
