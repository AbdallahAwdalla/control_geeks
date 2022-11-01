

x = [1;2;3];
x = 0:0.1:100;
x = [1
     2
     3];

xy = [1 2 3; 4 5 6; 7 8 9;];

xy = xy.*xy





%%




x= [1, 2, 3];
y = [1;2;3];
t = 0:5:100;


% Comment 
%{
        hgkjl
%}
%%
xy = [1 2 3
      4 5 6
      7 8 9];
xy = xy.*xy
%%
z = inv(xy)











%%

%% Define variabels 
%{
  BLOCK COMMENT   
%}
x = 5;
y = [1 2 3];
% y = [1,2,3];
z = [1; 2; 3;];
% 2-D Vector 
M = [1 2 3;4 5 6;7 8 9];
M = [1 2 3
     4 5 6
     7 8 9]

%% OPERATIONS 
%{
    Transpose:
    B=A'
    Matrix product:
    C=A*B
    Element-wise product:
    C=A.*B
    Matrix power:
    B=A^3 % B = A * A * A
    Element-wise power:
    B=A.^3 % each element of B = each element of A ^ 3
    Matrix inverse:
    B=inv(A)
    C=A/B % C = A * B^-1
    C=B\A % C = B^-1 * A
    Eigenvalues:
    eig(A)
%}


%% 
x = 0:0.1:2*pi;
y = sin(x);
subplot(1,2,1),plot(x,y);
subplot(1,2,2),plot(x,cos(x));



%%
t = 0:0.1:2*pi;
y = sin(t);
subplot(1,2,1),plot(t,y);

subplot(1,2,2),plot(t,cos(t));


%%

num = 3;
den = [1 2 5 0];
sys = tf(num, den);
subplot(2,1,1);impulse(sys);
t = 0:0.1:6;
for i= 1:length(t)
    y(i) = 3/5-((3/5)*cos(2*t(i)) + (1/5)*sin(2*t(i)))*exp(-1*t(i));
end


subplot(2,1,2);plot(t,y);

%%
%{
    Write a MATLAB script which calculate the integration 
    sin(x) in the interval 0 to 2*pi  
%}





area = 0;
for x=0:0.0001:pi
   area = area + sin(x) * 0.0001;
end
area


%% PLOTTING

t = 0:0.1:2*pi;
y = sin(t);
subplot(1,2,1),plot(t,y);
subplot(1,2,2),plot(t,cos(t));

%%

x = 0:10; % 0 to 10  step= 1
x = 0:0.01:10; % Starting from 0 to 10 with step = 1 
y = sin(x) 
subplot(1,2,1); 
plot(x,y,"Color",[0 0 1]); % subplot (
subplot(1,2,2);
plot(x,cos(x),"Color",[0 0 1]);


%% Problem 

%{ 
    Consider the Following system of Linear equations 
    x + 2y +3z = 1
   4x + 5y +6z = 1
   7x + 8y     = 1 
    
    Find x , y and z 
%}

A=[1 2 3;4 5 6;7 8 0];
c=[1;1;1];
B=inv(A)*c




%%

%  Ax = b 
A= [1 2 3
    4 5 6
    7 8 0];
b = [1
     1
     1];
% x = A^-1 b 
x = inv(A)*b
%x = A\b; % More efficient 


%{
  det  Determinant
  diag Diagonal matrices and diagonals of a matrix
  eig  Eigenvalues and eigenvectors
  inv  Matrix inverse
  norm Matrix and vector norms
  rank Number of linearly independent rows or columns
%}

%% 5 Polynomials as vectors 
% S^4 + 3 S^3 -15 S^2 - 2 S + 9 
a = [1 3 -15 2 9];

%% Step Impulse 
%{ 
              s + 3            s + 3
    F(S) = --------------- = ------------
           (s + 1)(s + 2)    S^2 + 3S + 2
%}
num = [1 3];
den = conv([1 1],[1 2]); % OR den = [1 3 2];
sys = tf(num, den);
step(sys);
%impulse(sys);


