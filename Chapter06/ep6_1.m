clear all;clc;

%%
new_system('ep6_1')
open_system('ep6_1')

%%
add_block('simulink/Sources/Sine Wave', 'ep6_1/Sine Wave')
add_block('simulink/Math Operations/Gain', 'ep6_1/Gain')
add_block('simulink/Sinks/Out1', 'ep6_1/Out')

%%
add_line('ep6_1', 'Sine Wave/1', 'Gain/1')
add_line('ep6_1', 'Gain/1', 'Out/1')
set_param('ep6_1/Gain', 'Gain', '3')
set_param('ep6_1/Sine Wave', 'Frequency', '4')
save_system('ep6_1', 'ep6_1.mdl')

