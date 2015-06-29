% Translational stage for pole-balancing
% Open-loop control

function state=stage(t)

% oscillating stage
amp=0.00;
freq=10;
phase=0;

stage_disp=amp*sin(2*pi*freq*t+phase);
stage_vel=2*pi*freq*amp*cos(2*pi*freq*t+phase);
stage_acc=-(2*pi*freq)^2*amp*sin(2*pi*freq*t+phase);

state=[stage_disp;stage_vel;stage_acc];