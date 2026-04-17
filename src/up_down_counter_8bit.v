module up_down_counter_8bit (
    input wire clk,
    input wire reset,
    input wire up_down,  // Control signal: 1 = Count Up, 0 = Count Down
    output reg [7:0] count
);

    // Asynchronous active-high reset
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 8'b0000_0000; // Reset count to 0
        end else if (up_down) begin
            count <= count + 1'b1; // Increment
        end else begin
            count <= count - 1'b1; // Decrement
        end
    end

endmodule
