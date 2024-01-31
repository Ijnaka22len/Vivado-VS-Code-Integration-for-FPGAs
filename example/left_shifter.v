
module left_shifter(input [7:0] shift_in,
                      input [1:0] shift_cntrl,
                      output reg [15:0] shift_out
                     );

  always @(*)
  begin
    shift_out[15:0] = 16'h0000;  // Input data
    if (shift_cntrl == 2'b00 || shift_cntrl == 2'b11)
    begin
      shift_out[7:0] = shift_in;  // No shift, shift_out[7:0] equals shift_in[7:0], all other bits '0'
    end
    else if (shift_cntrl == 2'b01)
    begin
      shift_out[11:4] = shift_in; // Shift left by 4 bits, shift_out[11:4] equals shift_in[7:0], all other bits '0'
    end
    else if (shift_cntrl == 2'b10)
    begin
      shift_out[15:8] = shift_in;  // Shift left by 8 bits, shift_out[15:8] equals shift_in[7:0], all other bits '0'
    end
  end

endmodule
