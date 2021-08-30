Jas = [3.075090e+09  5.329433e+08  3.179754e+08  3.131076e+08  2.991821e+08  1.292301e+08  3.226892e+02];
Jip = [2.790228e+09  2.790264e+07  3.692866e+02  3.792515e+02];
hold on
semilogy([0:6], Jas, 'b');
semilogy([0:3], Jip, 'r');
hold off
xlabel('Number of iteration')
ylabel('Value of the objective')
pbaspect ([2 1 1])
print -depsc2 -FTimes:16 -tight obj_asip.eps
