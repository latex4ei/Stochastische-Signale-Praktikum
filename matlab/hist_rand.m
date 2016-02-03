function x=hist_rand(N)
% Erstellen Sie hier einen Vektor x mit N Realisierungen von X
x=rand(N,1);
centers=0+1/40:1/20:1-1/40;
counts=hist(x,centers);
% Skalieren Sie hier die Variable counts gemaess den Vorgaben
counts = counts/N*20;
bar(centers,counts);
xlabel('x')
ylabel('h(x)')
title(sprintf('N = %01d',N));