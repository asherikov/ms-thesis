RFP = [
0.000000 -0.050000 0.000000;
0.001039 -0.051390 0.002534;
0.003912 -0.052667 0.005033;
0.008199 -0.053789 0.007464;
0.013464 -0.054737 0.009790;
0.019310 -0.055506 0.011979;
0.025409 -0.056104 0.013994;
0.031515 -0.056545 0.015802;
0.037452 -0.056847 0.017369;
0.043104 -0.057024 0.018659;
0.048404 -0.057093 0.019638;
0.053315 -0.057065 0.020271;
0.057823 -0.056949 0.020525;
0.061930 -0.056747 0.020364;
0.065641 -0.056462 0.019753;
0.068966 -0.056085 0.018659;
0.071909 -0.055606 0.017046;
0.074469 -0.055000 0.014881;
0.076630 -0.054231 0.012128;
0.078348 -0.053232 0.008754;
0.079534 -0.051893 0.004722;
0.080000 -0.050000 0.000000;
];

%plot3(RFP(:,1), RFP(:,2), RFP(:,3))
%plot3(RFP(:,1), RFP(:,2), RFP(:,3), 'rx')

figure 
subplot (2, 2, 1)
hold on
% x-z
plot(RFP(:,1), RFP(:,3))
plot(RFP(2:end-1,1), RFP(2:end-1,3), 'rx')
xlabel('x (meter)')
ylabel('z (meter)')
%axis equal
%axis tight
%box off
set (gca(), 'position', [0.1, 0.5, 0.45, 0.4])
set (gca(), 'xtick', floor(min(RFP(:,1))*100)/100:0.02:ceil(max(RFP(:,1))*100)/100)
%grid on
hold off

%figure 
subplot (2, 2, 3)
hold on
plot(RFP(:,1), RFP(:,2))
plot(RFP(2:end-1,1), RFP(2:end-1,2), 'rx')
xlabel('x (meter)')
ylabel('y (meter)')
%axis tight
axis equal
set (gca(), 'position', [0.1, 0.1, 0.45, 0.4])
set (gca(), 'xtick', floor(min(RFP(:,1))*100)/100:0.02:ceil(max(RFP(:,1))*100)/100)
set (gca(), 'ytick', [floor(min(RFP(:,2))*1000)/1000 ceil(max(RFP(:,2))*1000)/1000])
%grid on
hold off

%figure 
subplot (2, 2, 2)
hold on
% y-z
plot(RFP(:,2), RFP(:,3))
plot(RFP(2:end-1,2), RFP(2:end-1,3), 'rx')
xlabel('y (meter)')
ylabel('z (meter)')
%axis tight
axis equal
set (gca(), 'position', [0.6, 0.5, 0.4, 0.4])
set (gca(), 'xdir', 'reverse') 
set (gca(), 'xtick', [floor(min(RFP(:,2))*1000)/1000 ceil(max(RFP(:,2))*1000)/1000])
%grid on
hold off

print -depsc2 -FTimes:16 -tight foottraj.eps

