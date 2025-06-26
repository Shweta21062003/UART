module uart_rx (
    input clk,
    input reset,
    input rx,
    output reg [7:0] data_out,
    output reg data_ready
);
    reg [3:0] bit_index;
    reg [7:0] buffer;
    reg [1:0] state;
    localparam IDLE = 0, RECEIVE = 1, DONE = 2;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            data_out <= 0;
            data_ready <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (rx == 0) begin // Start bit detected
                        bit_index <= 0;
                        state <= RECEIVE;
                    end
                    data_ready <= 0;
                end

                RECEIVE: begin
                    buffer[bit_index] <= rx;
                    bit_index <= bit_index + 1;
                    if (bit_index == 7)
                        state <= DONE;
                end

                DONE: begin
                    data_out <= buffer;
                    data_ready <= 1;
                    state <= IDLE;
                end
            endcase
        end
    end
endmodule

