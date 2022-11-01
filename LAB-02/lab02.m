%{  
%   LAB -02 CSE Control
%   Introduction to MATLAB/SIMULINK PART 2
%   Created by: Abdallah Awdallah
%}

%{
% Residue
% Partial fraction expansion (partial fraction decomposition)
%         2s^3 + 5s^2 + 3s + 6
% F(S) = ------------------------
%          s^3 + 6s^2 + 11s + 6
%  
%}





[r, p, k ] = residue([2 5 3 6], [1 6 11 6])


%%

%{    Solution 
%                  3     -4    -6
%      F(S) = 2 + --- + ---- + ----
%                 s+1   s+2    s+3
%}

%%

%{
%          s^2 + 2s + 3
% F(S) = ------------------------
%          s^3 + 3s^2 + 3s + 1
%  
%}
[r p k] = residue([1 2 3],[1 3 3 1])


%{    Solution 
%                  1      0          2
%      F(S) =    ---- + ------- + --------
%                 s+1   (s+1)^2    (s+1)^3
%}

%% 
%{
    Anonymous Function 
%}
f= @(x,y) (x+4+y);
f(1,2)

%% 
%{

    Solve first order differential eq 
    tau * dy/dt = -y +ku 
    dy/dt = 1/tau * (-y +ku)
%}
tau = 0.03;
k= 1.0;

dydt = @(t,y)(-1*y + k*sin(t))/tau;
[t,y] = ode45(dydt,[0 10],0);
plot(t,y,'-',t,sin(t));
% Change the tau and see the solution change  
% 

%%

%{
%   Solve the following DEs using MATLAB/Octave:
%      ..     .                      .               
%   a) x  + 3 x + 2x = 0   x(0) = 1, x(0) = 2
%   
%}

coeff=[1 3 2 0];
init=[1 2];
myde=@(t, y) [y(2);
             -coeff(2)/coeff(1)*y(2)-coeff(3)/coeff(1)*y(1)+coeff(4)/coeff(1)];
[t, y]=ode45(myde, [0 5], init);
plot(t, y(:,1));

%{
%   Solve the following DEs using MATLAB/Octave:
%      ..     .                      .               
%   b) x  + 2 x + 5x = 3   x(0) = 1, x(0) = 0
%        ..     .                      .               
%   c) 2 x  + 7 x + 3x = 0   x(0) = 3, x(0) = 0
%}
