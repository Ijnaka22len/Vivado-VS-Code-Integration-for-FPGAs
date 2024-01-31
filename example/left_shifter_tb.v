`timescale 1ns / 1ps   // define timescale for simulation

module left_shifter_tb;

  // Inputs
  reg [7:0] shift_in;
  reg [1:0] shift_cntrl;
  // Outputs
  wire [15:0] shift_out;
  // Reg for counting iterations
  reg [3:0] counter;

  // Instantiate the DUT (Design Under Test)
  left_shifter left_shifter1 (
                 .shift_in(shift_in),
                 .shift_cntrl(shift_cntrl),
                 .shift_out(shift_out)
               );

  // Stimulus
  initial
  begin
    $display("Starting left_shifter_tb testbench...");

    counter = 6; // Initializing counter
    // Generate VCD file for waveform viewing
    $dumpfile("left_shifter.vcd");
    $dumpvars(0, left_shifter_tb);

    // Test case 1: No shift (shift_cntrl = 0)
    shift_in = 8'h0A;  // Input data
    // Iterating through different shift_cntrl values
    for (shift_cntrl = 0; shift_cntrl < 4; shift_cntrl = shift_cntrl + 1)
    begin
      #10;
      $display("Test case %d - shift_cntrl = 2'b%b:", shift_cntrl, shift_cntrl);
      $display("shift_in = 8'h%h, shift_out = 16'h%h", shift_in, shift_out);

      counter = counter - 1; // Incrementing counter
      if (counter == 1) // for loop breaks when counter reaches 1: End simulation
        $finish; // End simulation
    end

  end
endmodule
