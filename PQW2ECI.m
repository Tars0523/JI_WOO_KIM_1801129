function  R = PQW2ECI(arg_prg,inc_angle,RAAN)
    R_1 = [cos(RAAN) -sin(RAAN) 0;...
           sin(RAAN) cos(RAAN) 0;...
           0 0 1];
    
    R_2 = [1 0 0 ;...
        0 cos(inc_angle) -sin(inc_angle);...
        0 sin(inc_angle) cos(inc_angle)];
    
    R_3 = [ cos(arg_prg) -sin(arg_prg) 0;...
        sin(arg_prg) cos(arg_prg) 0;...
        0 0 1];

    R = R_1*R_2*R_3;
end