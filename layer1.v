module layer1 (
    input [9:0] inputs,
    input [9:0] w0,
    input [9:0] w1,
    input [9:0] w2,
    input [9:0] w3,
    input [9:0] w4,
    input [9:0] w5,
    input [9:0] w6,
    input [9:0] w7,
    input [9:0] w8,
    input [9:0] w9,

    output reg [9:0] activations
);
    wire  [4:0] sums [9:0];
    
    weighted_sum #(.N(10)) ws0 (.inputs(inputs), .weights(w0), .sum(sums[0]));
    weighted_sum #(.N(10)) ws1 (.inputs(inputs), .weights(w1), .sum(sums[1]));
    weighted_sum #(.N(10)) ws2 (.inputs(inputs), .weights(w2), .sum(sums[2]));
    weighted_sum #(.N(10)) ws3 (.inputs(inputs), .weights(w3), .sum(sums[3]));
    weighted_sum #(.N(10)) ws4 (.inputs(inputs), .weights(w4), .sum(sums[4]));
    weighted_sum #(.N(10)) ws5 (.inputs(inputs), .weights(w5), .sum(sums[5]));
    weighted_sum #(.N(10)) ws6 (.inputs(inputs), .weights(w6), .sum(sums[6]));
    weighted_sum #(.N(10)) ws7 (.inputs(inputs), .weights(w7), .sum(sums[7]));
    weighted_sum #(.N(10)) ws8 (.inputs(inputs), .weights(w8), .sum(sums[8]));
    weighted_sum #(.N(10)) ws9 (.inputs(inputs), .weights(w9), .sum(sums[9]));

    always @(*) begin
        activations = { (sums[9] > 15), (sums[8] > 15), (sums[7] > 15), (sums[6] > 15), (sums[5] > 15),
                        (sums[4] > 15), (sums[3] > 15), (sums[2] > 15), (sums[1] > 15), (sums[0] > 15) };
    end
endmodule