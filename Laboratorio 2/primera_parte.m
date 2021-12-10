

s = tf('s');

%H1 lazo abierto
H1 = 8*s/(6*s + 2);
step(H1);
[H1_zeros, H1_gain] = zero(H1);
H1_poles = zero(6*s + 2);
H1_settling_time = stepinfo(H1);
display(H1_zeros);
display(H1_gain);
display(H1_poles);
display(H1_settling_time);


%H1 Lazo cerrado
H1_feedback = feedback(H1, H1);
display(H1_feedback);
figure()
step(H1_feedback);

% H2 lazo abierto
H2 = (5*s^2 + 7*s +1)/(s^2 + 6*s + 3);
figure()
step(H2);

[H2_zeros, H2_gain] = zero(H2);
H2_poles = zero(s^2 + 6*s + 3);
H2_settling_time = stepinfo(H2);
display(H2_zeros);
display(H2_gain);
display(H2_poles);
display(H2_settling_time);

%H2 lazo cerrado
H2_feedback = feedback ( H1 , H2 );
display(H2_feedback);
figure()
step(H2_feedback);