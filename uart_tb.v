`timescale 1ns / 1ps

module uart_tb;

    // Testbench signals
    reg clk = 0;
    reg reset = 1;
    reg send = 0;
    reg [7:0] data = 8'b10100101;  // Data to transmit

    wire tx_line;                 // UART TX output
    wire [7:0] data_out;          // Received data
    wire data_ready;              // Data received flag

    // Clock generation: 10ns clock period
    always #5 clk = ~clk;

    // Instantiate UART Transmitter
    uart_tx transmitter (
        .clk(clk),
        .reset(reset),
        .data_in(data),
        .send(send),
        .tx(tx_line),
        .busy()
    );

    // Instantiate UART Receiver
    uart_rx receiver (
        .clk(clk),
        .reset(reset),
        .rx(tx_line),          // ? tx_line directly connected to rx
        .data_out(data_out),
        .data_ready(data_ready)
    );

    // Stimulus
    initial begin
        // Apply reset
        #10 reset = 0;

        // Trigger transmission
        #20 send = 1;
        #10 send = 0;

        // Wait enough time for transmission & reception
        #500;

        $stop;
    end

endmodule
