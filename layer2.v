module layer2 (
    input [9:0] inputs,
    input [9:0] w0, w1, w2, w3, w4,
    output reg [4:0] activations
);
    wire [4:0] sums [4:0];
    
    weighted_sum #(.N(10)) ws0 (.inputs(inputs), .weights(w0), .sum(sums[0]));
    weighted_sum #(.N(10)) ws1 (.inputs(inputs), .weights(w1), .sum(sums[1]));
    weighted_sum #(.N(10)) ws2 (.inputs(inputs), .weights(w2), .sum(sums[2]));
    weighted_sum #(.N(10)) ws3 (.inputs(inputs), .weights(w3), .sum(sums[3]));
    weighted_sum #(.N(10)) ws4 (.inputs(inputs), .weights(w4), .sum(sums[4]));

    // always @(*) begin
    // $display("Layer2 sums: %d %d %d %d %d",
    //          sums[0], sums[1], sums[2], sums[3], sums[4]);
    // end
    
    always @(*) begin
        activations = { (sums[4] > 15), (sums[3] > 15), (sums[2] > 15), (sums[1] > 15), (sums[0] > 15) };
    end
endmodule