% Pole-balancing problem
% Controlling an inverted pendulum on a translational stage

% A controlled stage requires an external input to the system in the form
% of stage acceleration
% A controller observes the system as input and outputs stage acceleration

% System state-vector:
% [ angular displacement of pole;
%   angular velocity of pole ]

% System input-vector:
% [ stage acceleration ]


function dsys=polebal(t,sys)
g = 9.81;
l = 0.1;

% get angular displacement and velocity from system vector
v_theta=sys(1);
v_dtheta=sys(2);

% get external input: stage acceleration
stage_state=stage(t);
stage_acc=stage_state(3);

% derivatives
if (abs(v_theta)>pi/2)
    % pole has fallen
    d_theta=0;
    d_dtheta=0;
else    
    d_theta=v_dtheta;
    d_dtheta=(g*sin(v_theta)-stage_acc*cos(v_theta))/l;
end

dsys = [d_theta; d_dtheta];