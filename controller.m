% Simple controller for pole-balancing

function stage_acc=controller(t)

% oscillating stage
amp=0;
freq=10;
phase=0;

stage_acc=amp*sin(2*pi*freq*t+phase);