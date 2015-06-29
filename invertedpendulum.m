% Inverted pendulum simulation
close all; clear all;

% solver parameters
init_sys=[0.01;-0.1];     % initial condition for system [ang disp;ang vel]
t_span=[0;3];      % solver time limit

% run solver
[T,SYS]=ode45('polebal',t_span,init_sys);

% plot pole-angle against time
plot(T,SYS(:,1));
grid on;

% graphical simulation
STAGE=stage(T);
