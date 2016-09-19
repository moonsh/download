
clear;

% case 1.
% f=@(x) x-2.^(-x);

% case 2.
% f=@(x) exp(-x) .* (3.2 .* sin(x) - 0.5 .*cos(x)) ;

 f=@(x)  x.^3 - x.^2 -3;


% Input
a(1)=0; b(1)=4;       % End points a,b
tol= 10^-5;           % Tolerance
step_number=20;       % Maximum number of iterations
stop=0;               % Final iteration

 for i=1:step_number
     p(i)=(a(i)+b(i))/2;
     value(i)=f(p(i));
     
              if  i > 2 && abs((p(i)-p(i-1))/p(i)) < tol  
                  stop = i; 
                  break
              end
    
         if f(p(i))*f(a(i))>0
             a(i+1)=p(i);
             b(i+1)=b(i);
         else b(i+1)=p(i);
              a(i+1)=a(i);
              
 
         end
 end
 
 fprintf('Root of given equation is %f , final iteration %d',p(i), stop)
 subplot(1,2,1)
 plot(value);
 title('Plot of error')
 xlabel('Number of iterations')
 ylabel('F(x)')
 grid on;
 
 t = a(1):0.01:b(1);
 subplot(1,2,2)
 plot(t,f(t));
 title('Function figure')
 xlabel('x')
 ylabel('F(x)')
 grid on;