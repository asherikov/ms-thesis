function ss_plot()

cla

angle = -0.5;
R = [cos(angle) -sin(angle);
     sin(angle)  cos(angle)];
RR = [R; -R];

r = [0.2;0.5];

Css = [0.9;0.25;0.3;0.25];
Cds = [0.7;0.25;0.25;0.25];

C = Css + RR*r;

plot_constraints(RR,C,'r');
plot(r(1), r(2), 'gs', 'markersize', 8);

axis equal
grid on
box on
axis([-0.3 1.3 0.0 1.2])

draw_arrow([0;0], r, 0.025, 0.06, 'black', 'black', 0, '-', 1);
text(0.08,0.3,'r')

draw_arrow(r, r + R'*[Css(1); 0], 0.025, 0.06, 'blue', 'blue', 0, '-', 1);
text(0.65,0.8,'h')
draw_arrow(r, r + R'*[0; Css(2)], 0.025, 0.06, 'blue', 'blue', 0, '-', 1);
text(0.1,0.6,'j')
draw_arrow(r, r - R'*[Css(3); 0], 0.025, 0.06, 'blue', 'blue', 0, '-', 1);
text(0.0,0.45,'k')
draw_arrow(r, r - R'*[0; Css(4)], 0.025, 0.06, 'blue', 'blue', 0, '-', 1);
text(0.3,0.4,'l')

plot ([r(1) r(1)+0.6], [r(2) r(2)], 'k:');
text(0.4,0.55,'a')

print -depsc2 -FTimes:16 -tight rect_constraints.eps 



%%%%


function plot_constraints(A, b, color, patch_flag)
%
% plot constraints A*x <= b (in 2D)
%

if nargin < 4
    patch_flag = 0;
    if nargin < 3
        color = 'b';
    end
end

p = Constraints2Vert(A,b);

if patch_flag
    patch(p(:,1),p(:,2), [0.95,0.95,0.95], 'linewidth', 2, 'linestyle', ':')
end

plot_ConvHull(p,color);



%%%%


function p = Constraints2Vert(A,b)
%
% Compute the vertices of a polygon from the 
% constraints (A*x <= b)
%
% Inputs:
% --------
% A, b    - form the linear constraint inequalities in 2D
%
% Outputs:
% ---------
% p       - all vertex points
% dim     - dimensions of each constraint
%

p = [0;0];

dim = size(A,1);

for i = 1:1:dim-1
  p(:,i+1) = A(i:i+1,:)\b(i:i+1);
end

p(:,1) = A([1,size(A,1)],:)\b([1,size(A,1)]);
p = p';


%%%%


function plot_ConvHull(c,color)
%
% Function to display a convex hull defined by n 2D points.
%
% Inputs:
% --------
% c     - points [n x 2]
% color - color. For example 'b' 
%

% Row size of c (the points defining the convex hull) 
n = size(c,1); 

% Plots the convex hull
hold on;
for i=1:n-1
  plot([c(i,1) c(i+1,1)], [c(i,2) c(i+1,2)], color);
end
plot([c(1,1) c(n,1)], [c(1,2) c(n,2)], color);

%%%EOF%
