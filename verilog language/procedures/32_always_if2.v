/*
// this code will generate a un-intended latch
// Syntactically-correct code does not necessarily result in a reasonable circuit (combinational logic + flip-flops). 
// The usual reason is: "What happens in the cases other than those you specified?". 
// Verilog's answer is: Keep the outputs unchanged. => current state must be remembered => produce latch
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
    end

endmodule
*/

// correct code
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  );

    always @(*) shut_off_computer = cpu_overheated;

    always @(*) keep_driving = (~ arrived) & (~ gas_tank_empty);

endmodule