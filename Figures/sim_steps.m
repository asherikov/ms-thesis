clear FS;

FS(1).a = 0.000000;
FS(1).p = [0.000000;0.050000];
FS(1).d = [0.090000;0.075000;0.030000;-0.025000];
FS(1).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(1).v = [0.090000 0.025000; 0.090000 0.075000; -0.030000 0.075000; -0.030000 0.025000; 0.090000 0.025000];
FS(1).type = 2;
plot (FS(1).v(:,1), FS(1).v(:,2), 'r');

FS(3).a = 0.000000;
FS(3).p = [0.000000;-0.050000];
FS(3).d = [0.090000;-0.025000;0.030000;0.075000];
FS(3).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(3).v = [0.090000 -0.075000; 0.090000 -0.025000; -0.030000 -0.025000; -0.030000 -0.075000; 0.090000 -0.075000];
FS(3).type = 2;
plot (FS(3).v(:,1), FS(3).v(:,2), 'r');

FS(7).a = 0.000000;
FS(7).p = [0.040000;0.050000];
FS(7).d = [0.130000;0.075000;-0.010000;-0.025000];
FS(7).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(7).v = [0.130000 0.025000; 0.130000 0.075000; 0.010000 0.075000; 0.010000 0.025000; 0.130000 0.025000];
FS(7).type = 2;
plot (FS(7).v(:,1), FS(7).v(:,2), 'k');

FS(11).a = 0.000000;
FS(11).p = [0.080000;-0.050000];
FS(11).d = [0.170000;-0.025000;-0.050000;0.075000];
FS(11).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(11).v = [0.170000 -0.075000; 0.170000 -0.025000; 0.050000 -0.025000; 0.050000 -0.075000; 0.170000 -0.075000];
FS(11).type = 2;
plot (FS(11).v(:,1), FS(11).v(:,2), 'k');

FS(15).a = 0.000000;
FS(15).p = [0.120000;0.050000];
FS(15).d = [0.210000;0.075000;-0.090000;-0.025000];
FS(15).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(15).v = [0.210000 0.025000; 0.210000 0.075000; 0.090000 0.075000; 0.090000 0.025000; 0.210000 0.025000];
FS(15).type = 2;
plot (FS(15).v(:,1), FS(15).v(:,2), 'r');

FS(19).a = 0.000000;
FS(19).p = [0.160000;-0.050000];
FS(19).d = [0.250000;-0.025000;-0.130000;0.075000];
FS(19).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(19).v = [0.250000 -0.075000; 0.250000 -0.025000; 0.130000 -0.025000; 0.130000 -0.075000; 0.250000 -0.075000];
FS(19).type = 2;
plot (FS(19).v(:,1), FS(19).v(:,2), 'r');

FS(23).a = 0.000000;
FS(23).p = [0.200000;0.050000];
FS(23).d = [0.290000;0.075000;-0.170000;-0.025000];
FS(23).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(23).v = [0.290000 0.025000; 0.290000 0.075000; 0.170000 0.075000; 0.170000 0.025000; 0.290000 0.025000];
FS(23).type = 2;
plot (FS(23).v(:,1), FS(23).v(:,2), 'k');

FS(25).a = 0.000000;
FS(25).p = [0.200000;-0.050000];
FS(25).d = [0.290000;-0.025000;-0.170000;0.075000];
FS(25).D = [1.000000 0.000000;-0.000000 1.000000;-1.000000 -0.000000;0.000000 -1.000000];
FS(25).v = [0.290000 -0.075000; 0.290000 -0.025000; 0.170000 -0.025000; 0.170000 -0.075000; 0.290000 -0.075000];
FS(25).type = 2;
plot (FS(25).v(:,1), FS(25).v(:,2), 'k');

for i=1:length(FS)
    if FS(i).type == 2;
        plot (FS(i).p(1),FS(i).p(2),'gs','MarkerFaceColor','g','MarkerSize',4)
    end
end

ZMPref = [
0.030000 -0.050000;
0.030000 0.000000;
0.070000 0.050000;
0.110000 -0.050000;
0.150000 0.050000;
0.190000 -0.050000;
0.230000 0.000000;
0.230000 0.050000;
];

plot(ZMPref(:,1), ZMPref(:,2), 'ko')
