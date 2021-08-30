function ds_plot()

%text(1,1.2,'P');
%a = 2;
%axis([-a a -a a])

cla

Rr = [eye(2);-eye(2)];
angle = -0.5;
R = [cos(angle) -sin(angle);
     sin(angle)  cos(angle)];
Rl = [R; -R];

Pr = [0;-0.5];
Pl = [0.2;0.5];

Css = [0.9;0.25;0.3;0.25];
Cds = [0.7;0.25;0.25;0.25];

Cl = Css + Rl*Pl;
Cr = Css + Rr*Pr;

p = [(Constraints2Vert(Rl,Cl))(1:3,:);
     (Constraints2Vert(Rr,Cr))([3 4 1],:)];
patch(p(:,1),p(:,2), [0.95,0.95,0.95], 'linewidth', 2, 'linestyle', ':')


plot_constraints(Rl,Cl,'r');
plot(Pl(1), Pl(2), 'gs', 'markersize', 8);
plot_constraints(Rr,Cr,'r');
plot(Pr(1), Pr(2), 'gs', 'markersize', 8);

axis equal
grid on
box on

% Save figure in eps format
print -depsc2 -FTimes:16 -tight ds_convex_hull.eps 

%%%%%%%%%%%

cla
N = 3;
Pds = [];
for i=1:N
    theta = i/(N+1);
    angle_ds = angle*theta;
    R = [cos(angle_ds) -sin(angle_ds);
         sin(angle_ds)  cos(angle_ds)];
    Rds = [R; -R];
    Pds = [Pds (1-theta) * Pr + theta * Pl];
    Cads = Cds + Rds*Pds(:,end);

    plot_constraints(Rds, Cads,'k:',1)
end
plot_constraints(Rr,Cr,'r',0);
plot_constraints(Rl,Cl,'r',0);



plot([Pl(1) Pr(1)], [Pl(2) Pr(2)], 'gs:', 'markersize', 8);
plot(Pds(1,:), Pds(2,:), 'gs', 'markersize', 4);

print -depsc2 -FTimes:16 -tight ds_approx.eps 


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
