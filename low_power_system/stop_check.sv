module stop_check(
input  wire stop_bit,
input  wire stop_check_en,
output wire stop_err
);

assign stop_err = (stop_check_en && stop_bit != 1'b1);

endmodule