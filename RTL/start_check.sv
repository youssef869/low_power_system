module start_check(
input  wire start_bit,
input  wire start_check_en,
output wire start_glitch
);

assign start_glitch = (start_check_en && start_bit != 1'b0);

endmodule