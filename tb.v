module testbench;
    reg [9:0] inputs;
    reg [9:0] w10, w11, w12, w13, w14, w15, w16, w17, w18, w19;
    reg [9:0] w20, w21, w22, w23, w24;
    wire [4:0] outputs;
    
    BNN bnn_inst (
        .inputs(inputs), 

        .w10(w10), 
        .w11(w11), 
        .w12(w12), 
        .w13(w13), 
        .w14(w14), 
        .w15(w15), 
        .w16(w16), 
        .w17(w17), 
        .w18(w18), 
        .w19(w19),

        .w20(w20), 
        .w21(w21), 
        .w22(w22), 
        .w23(w23), 
        .w24(w24), 
        
        .outputs(outputs)
        );
    
    initial begin
    
    inputs = 10'b1100110011; 

    w10 = 10'b1100110011;  
    w11 = 10'b0000000000;  
    w12 = 10'b1010101010;  
    w13 = 10'b0011001100;  
    w14 = 10'b1111000000;  
    w15 = 10'b0000111100;  
    w16 = 10'b1111111111;  
    w17 = 10'b0110100110;  
    w18 = 10'b1001100110;  
    w19 = 10'b0001110001;  

    
    w20 = 10'b1100110000;  
    w21 = 10'b1010101010;  
    w22 = 10'b0000000000;  
    w23 = 10'b0110110110;  
    w24 = 10'b1111111111;  

    #10;
    $display("Output: %b", outputs);
    $finish;
end
endmodule
