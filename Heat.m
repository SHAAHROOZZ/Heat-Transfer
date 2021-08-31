% -----------------------------
% SHAHROOZ IRANMANESH
% STUDENT NUMBER=97150504
% FINAL PROJECT HEAT TRANSFER 
% ------------------------------


% ------------------------------
% CLOSE THE LATEST DATA AND CLEAN THE SPACE
% ------------------------------

close all;
clear all;
clc;

% ------------------------------
% INFORMATION
% ------------------------------

n=4;
w=3;
h=3;

% ------------------------------
% LOCATE THE NODALS
% ------------------------------

x=linspace(0,w,n);
y=linspace(0,h,n);

% ------------------------------
% BOUNDRY CONDITION
% ------------------------------

T=zeros(n);

T(1,1:n)=100;                    %TOP SIDE OF SHAPE                                    
T(n,1:n)=300;                    %BOTTOM SIDE OF SHAPE   
T(1:n,1)=500;                    %LEFT SIDE OF SHAPE   
T(1:n,n)=200;                    %RIGHT SIDE OF SHAPE             

%-----------------------------
% MAKE A LOOP
% ----------------------------

tol=1e-6;
error=1;
k=0

while error> tol
    k=k+1
      T_old=T                    %T OLD
        for i=2:n-1;
            for j=2:n-1;
                 T(i,j)=.25*(T(i,j-1))+T(i-1,j)+T(i+1,j)+T(i,j+1);
            end
        end
        
error=max(max(abs(T_old-T)));
        
end
                 
% -----------------------------
% DRAW THE PLOT
% -----------------------------

subplot(3,1,1),contour(x,y,T),colormap
title('Tempreture'),xlabel('x'),ylabel('y'),colorbar
subplot(3,1,2),pcolor(x,y,T),shading interp,
title('Tempreture'),xlabel('x'),ylabel('y'),colorbar
subplot(3,1,3)
surf(T')
xlabel('x axis')
ylabel('y axis')
zlabel('z axis')

% ----------------------------
%  FINISH THE PROJECT
% ----------------------------
                 
                 
                 
                 
                 
                 
                 
                 
      

