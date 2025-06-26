module uart_tx (
    input clk,
    input reset,
    input [7:0] data_in,
    input send,
    output reg tx,
    output reg busy
);
    reg [3:0] bit_index;
    reg [9:0] frame;  // Start(1) + Data(8) + Stop(1)

    reg [3:0] state;
    localparam IDLE = 0, LOAD = 1, SHIFT = 2;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx <= 1;
            busy <= 0;
            state <= IDLE;
        end else begin
            case(state)
                IDLE: begin
                    tx <= 1;
                    busy <= 0;
                    if (send) begin
                        frame <= {1'b1, data_in, 1'b0}; // Stop, Data, Start
                        bit_index <= 0;
                        state <= LOAD;
                    end
                end

                LOAD: begin
                    busy <= 1;
                    state <= SHIFT;
                end

                SHIFT: begin
                    tx <= frame[bit_index];
                    bit_index <= bit_index + 1;
                    if (bit_index == 9) state <= IDLE;
                end
            endcase
        end
    end
endmodule
