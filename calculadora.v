module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

  wire [7:0] resultado_alu;

  // Instancia o somador_subtrator
  // Considerando: 
  // entrada_A, entrada_B, carry_in (bit 3 do código) -> resultado_alu
  somador_subtrator alu_inst (
    .a(entrada_A),
    .b(entrada_B),
    .sel(codigo[2]),      // Bit mais significativo: 0 para soma, 1 para subtração
    .result(resultado_alu),
    .cout()               // Não usamos o carry de saída
  );

  // MUX de seleção da saída
  assign saida = (codigo == 3'b000) ? 8'b00000000 :  // zerar
                 (codigo == 3'b001) ? entrada_A     :  // mostrar_A
                 (codigo == 3'b010) ? entrada_B     :  // mostrar_B
                 (codigo == 3'b011 || codigo == 3'b100) ? resultado_alu :  // somar ou subtrair
                 8'b00000000; // código inválido

endmodule
