%{
            5 (1 + 0.5 s)
d)  G(s) = --------------------
           s(1 + 2s) (1 + 10s)
%}

num = [2.5 5];
den = conv([2 1 0],[10 1]);
sys = tf(num,den);
bode (sys);

% hold on is used here to keep the plot as we need to append the graph :) 
hold on 

% Determine the Static Velocity Error constant 
%{

    The Open loop transfer function for type N system 

            K(Ta*S + 1 )(Tb*S + 1 )....(Tm*S + 1 )
    GS(s) = -----------------------------------------
            (S)^N (T1*S + 1 )(T2*S + 1 )...... (Tb*S + 1 )

            K(Ta*jw + 1 )(Tb*jw + 1 )....(Tm*jw + 1 )
    GS(jw) = -----------------------------------------
            (jw)^N (T1*jw + 1 )(T2*jw + 1 )...... (Tb*jw + 1 )
             
             Kv
    G(jw) = ------,   for w << 1 (Low freq asymptote ) 
             jw

   | Kv/jw |= 1 

    Kv = w 

If we draw the low frequencies asymptote we can get the Kv easly

%}  

% Draw low freq part to get the intersection with G(jw) = 1 ===> in bode
% plot 20 log (1) = 0 dB
% the Asymptote of the low frequences part is drawn by the following steps
%{
    We take the following part from the G(s) 
         K
        ----
         S
    This part from the open loop transfer function can plot the low freq
    Asympotote in Type 1 system case 
    
%}
num = 5 ;
den = [1 0];
sys_01 = tf(num, den );
bode (sys_01)
[Gm,pm,wcp,wcg] = margin(sys_01);
% The gain cross over frequencies is 
Kv = wcg
grid
hold off
