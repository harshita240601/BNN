module weighted_sum #(
    parameter N = 10
    ) (
    input [N-1:0] inputs,
    input [N-1:0] weights,
    output reg  [4:0] sum
);

    integer i;
    always @(*) begin

        sum = 0;
        for (i = 0; i < N; i = i + 1) begin
            sum = sum + (inputs[i] ~^ weights[i]); 
        end

    end

endmodule