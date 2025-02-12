module BNN (
    input [9:0] inputs,

    input [9:0] w10, 
    input [9:0] w11, 
    input [9:0] w12, 
    input [9:0] w13, 
    input [9:0] w14, 
    input [9:0] w15, 
    input [9:0] w16, 
    input [9:0] w17, 
    input [9:0] w18, 
    input [9:0] w19,

    input [9:0] w20, 
    input [9:0] w21, 
    input [9:0] w22, 
    input [9:0] w23,
    input [9:0] w24,

    output [4:0] outputs
);
    wire [9:0] layer1_out;
    
    layer1 l1 (
        .inputs(inputs), 
        .w0(w10), 
        .w1(w11), 
        .w2(w12), 
        .w3(w13), 
        .w4(w14), 
        .w5(w15), 
        .w6(w16), 
        .w7(w17), 
        .w8(w18), 
        .w9(w19), 
        .activations(layer1_out)
    );

    layer2 l2 (
        .inputs(layer1_out), 
        .w0(w20), 
        .w1(w21), 
        .w2(w22), 
        .w3(w23), 
        .w4(w24), 
        .activations(outputs)
    );
endmodule