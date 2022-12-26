% Plot the root loci for the closed-loop systems with
%{
            K(s+0.2)
a)  G(s) = ------------   H(s) = 1
            s^2 (s+2)
%}
num = [1 0.2];
den = conv([1 0 0],[1 2]);
sys = tf(num, den);
rlocus(sys);
%%
%{
                K
b)  G(s) = --------------   H(s) = 1
            s (s^2+4s+8)
%}
num = [1];
den = conv([1 0],[1 4 8]);
sys = tf(num, den);
rlocus(sys)
%% 


%%
%{ 
    Question 2
    Plot the root loci for the closed-loop systems with

               K(s+9)
   G(s) = -----------------  H(s) = 1
           s(s^2 + 4s + 11)

Locate the closed-loop poles on the root loci such that
the dominant closed-loop poles have damping ratio equal to 0.5.
Determine the corresponding value of gain K.

%}
num = [1 9];
den = conv([1 0],[1 4 11]);
sys = tf(num, den);
rlocus(sys)



% line plot 
%% Plot the root loci for the closed-loop systems with
%{
                    k
    G(s) = ------------------- ; H(s) = 1
            s(s+1)(s^2+4s+5)
%}
num = [1];
den = conv([1 0],conv([1 1],[1 4 5]));
sys = tf(num, den)
rlocus(sys)
grid


%% Plot the Bode diagram of the following transfer functions. 
% Obtain Kp, Kv or Ka from the Bode diagram where applicable.

%{
              10
    G(s) = ---------
            s(s+1)
%}


num = [1];
den = conv([1 0],[1 1]);
sys = tf(num, den);
bode(sys)
grid
 margin(sys)

%% Plot the Bode diagram of the following transfer functions. 
% Obtain Kp, Kv or Ka from the Bode diagram where applicable.

%{  
                    s
              1 + ----
                   10
    G(s) = --------------------
                      s
            s ( 1 + ------ )
                     100
%}          
num = [0.1 1];
den = conv([1 0],[0.01 1]);
sys = tf(num, den);
bode(sys)
grid
margin(sys)

%% Plot the Bode diagram of the following transfer functions. 
% Obtain Kp, Kv or Ka from the Bode diagram where applicable.
%{  
                20(s + 1)
    G(s) = --------------------
            s(s+5)(s^2+2s+10)
%}   

num = [20 20];
den = conv([1 5 0],[1 2 10]);
sys = tf(num,den);
w= logspace(-1,2,1000);
bode (sys,w);
grid
margin(sys)
% Gm = Gain margin 
% pm = Phase margin
% wcp = phase cross over freq 
% wcg = gain cross-over freq 
[Gm,pm,wcp,wcg] = margin(sys)

GmdB = 20*log10(Gm);
[GmdB,pm,wcp,wcg]

%% Plot the Bode diagram of the following transfer functions. 
% Obtain Kp, Kv or Ka from the Bode diagram where applicable. 
%{
                  s
            1 + -------
                  10
    G(S) = -------------------
                     s
            s( 1 + ------- )
                     100
%}
num = [0.1 1];
den = [0.01 1 0];
sys = tf(num,den);
bode (sys);
grid
margin(sys)

% Kv= 1 

%% Plot the Bode diagram of the following transfer functions. 
% Obtain Kp, Kv or Ka from the Bode diagram where applicable.
%{
                           s
            (1 + s) (1 + -----)
                           10
c)  G(s) = -----------------------
                  s          s
            (1 + ----)(1 + -----)
                  0.1       100
%}
num = conv([1 1], [0.1 1]);
den = conv([10 1],[0.01 1]);
sys = tf(num,den);
bode (sys);
grid
margin(sys)
% Kp = 1 
%%

%{
            5 (1 + 0.5 s)
d)  G(s) = --------------------
           s(1 + 2s) (1 + 10s)
%}

num = [2.5 5];
den = conv([2 1 0],[10 1]);
sys = tf(num,den);
bode (sys);
grid
margin(sys)

% Kv = 5 