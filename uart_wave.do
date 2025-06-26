# Reading C:/intelFPGA/18.1/modelsim_ase/tcl/vsim/pref.tcl
# Loading project project_uart
# Compile of uart_tx.v was successful.
# Compile of uart_rx.v was successful.
# Compile of uart_tb.v was successful.
# 3 compiles, 0 failed with no errors.
vsim -gui work.uart_tb
# vsim -gui work.uart_tb 
# Start time: 09:28:11 on Jun 26,2025
# Loading work.uart_tb
# Loading work.uart_tx
# Loading work.uart_rx
add wave -position insertpoint  \
sim:/uart_tb/clk
add wave -position insertpoint  \
sim:/uart_tb/reset
add wave -position insertpoint  \
sim:/uart_tb/send
add wave -position insertpoint  \
sim:/uart_tb/data
add wave -position insertpoint  \
sim:/uart_tb/tx_line
add wave -position insertpoint  \
sim:/uart_tb/rx_line
add wave -position insertpoint  \
sim:/uart_tb/transmitter/tx
add wave -position insertpoint  \
sim:/uart_tb/transmitter/busy
add wave -position insertpoint  \
sim:/uart_tb/transmitter/bit_index
add wave -position insertpoint  \
sim:/uart_tb/transmitter/frame
add wave -position insertpoint  \
sim:/uart_tb/receiver/rx
add wave -position insertpoint  \
sim:/uart_tb/receiver/data_out
add wave -position insertpoint  \
sim:/uart_tb/receiver/data_ready
add wave -position insertpoint  \
sim:/uart_tb/receiver/bit_index
add wave -position insertpoint  \
sim:/uart_tb/receiver/buffer
add wave -position insertpoint  \
sim:/uart_tb/receiver/state
run 500ns
# ** Note: $stop    : E:/PROJECTS/uart_tb.v(21)
#    Time: 340 ns  Iteration: 0  Instance: /uart_tb
# Break in Module uart_tb at E:/PROJECTS/uart_tb.v line 21
vsim -gui work.uart_tb
# End time: 09:37:37 on Jun 26,2025, Elapsed time: 0:09:26
# Errors: 0, Warnings: 0
# vsim -gui work.uart_tb 
# Start time: 09:37:37 on Jun 26,2025
# Loading work.uart_tb
# Loading work.uart_tx
# Loading work.uart_rx
# Compile of uart_tx.v was successful.
# Compile of uart_rx.v was successful.
# Compile of uart_tb.v was successful.
# 3 compiles, 0 failed with no errors.
vsim -gui work.uart_tb
# End time: 09:38:06 on Jun 26,2025, Elapsed time: 0:00:29
# Errors: 0, Warnings: 0
# vsim -gui work.uart_tb 
# Start time: 09:38:06 on Jun 26,2025
# Loading work.uart_tb
# Loading work.uart_tx
# Loading work.uart_rx
add wave -position insertpoint  \
sim:/uart_tb/clk
add wave -position insertpoint  \
sim:/uart_tb/reset
add wave -position insertpoint  \
sim:/uart_tb/send
add wave -position insertpoint  \
sim:/uart_tb/data
add wave -position insertpoint  \
sim:/uart_tb/transmitter/tx
add wave -position insertpoint  \
sim:/uart_tb/transmitter/busy
add wave -position insertpoint  \
sim:/uart_tb/transmitter/bit_index
add wave -position insertpoint  \
sim:/uart_tb/transmitter/frame
add wave -position insertpoint  \
sim:/uart_tb/receiver/rx
add wave -position insertpoint  \
sim:/uart_tb/receiver/data_out
add wave -position insertpoint  \
sim:/uart_tb/receiver/data_ready
add wave -position insertpoint  \
sim:/uart_tb/receiver/bit_index
add wave -position insertpoint  \
sim:/uart_tb/receiver/buffer
add wave -position insertpoint  \
sim:/uart_tb/receiver/state
run 1000ns
# ** Note: $stop    : E:/PROJECTS/uart_tb.v(49)
#    Time: 540 ns  Iteration: 0  Instance: /uart_tb
# Break in Module uart_tb at E:/PROJECTS/uart_tb.v line 49
run
run
run
run
run
run
run
run
run
run
run -continue
