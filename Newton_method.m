
clear;

% f=@(x)  x.^3 - x.^2 -3;
% f1=@(x) 3*x.^2 - 2*x;

% f=@(x) cos(x) + 2*sin(x) - x.^2;      % when there are two roots.
% f1 =@(x)  -sin(x) + 2 *cos(x) - 2*x;

% f= @(x)   exp(-x).* cos(x);
% f1= @(x)  -exp(-x).* cos(x) - exp(-x).* sin(x);

%failure case 1. When there is no root for exp(x) = 0
% f=@(x) exp(x) -1;
% f1= @(x) exp(x);

%failure case 2.  When the derative is zero or bad initial approximation.
%  f=@(x) x - x.^2;
%  f1= @(x) 1 - 2*x;

%Input
p(1) = 1.3;           % Initial Approximation   x(0) = 0;
tol= 10^-5;           % Tolerance
step_number=40;       % Maximum iteration

 for i=1:step_number
         value(i)=f(p(i));
     p(i+1) = p(i) - f(p(i))/f1(p(i));
        
      if   abs(p(i+1) - p(i)) < tol
          break
      end
      
 end
 
 fprintf('Root of given equation is %f',p(i))
 subplot(1,2,1)
 plot(value);
 title('Plot of error')
 xlabel('Number of iterations')
 ylabel('F(x)')
 grid on;

 t = -2:0.01:4;
 subplot(1,2,2)
 plot(t,f(t));
 title('Function figure')
 xlabel('x')
 ylabel('F(x)')
 grid on;
