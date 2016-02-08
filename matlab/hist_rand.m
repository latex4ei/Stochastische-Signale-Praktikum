function x=hist_rand(N)
% Vektor x mit N Realisierungen von X (Gleichverteilung)
x=rand(N,1);
centers=0+1/40:1/20:1-1/40;
counts=hist(x,centers);
% Normierung von counts fuer eine PDF
counts = counts/N*20;
bar(centers,counts);
xlabel('x')
ylabel('h(x)')
title(sprintf('N = %01d',N));