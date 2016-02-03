function hist_out(N,p,sigma)
binwidth=0.025;
centers=-2+binwidth/2:binwidth:3-binwidth/2;
figure
subplot(311)

% X 0 oder 1, Y = X + normalverteiltes Rauschen
x=binornd(1,p,N,1);
y=awgn_channel(x,sigma);

counts=hist(y,centers);
bar(centers,counts/(binwidth*sum(counts)),1);
ylim([0 2])
xlabel('y')
ylabel('h(y)')
title(sprintf('N=%01d',N))

subplot(312)
% Fall X ist immer 1
x=ones(N,1);
y=awgn_channel(x,sigma);

counts=hist(y,centers);
bar(centers,counts/(binwidth*sum(counts)),1);
ylim([0 2])
xlabel('y')
ylabel('h(y|x=1)')

subplot(313)
% Fall X ist immer 0
x=zeros(N,1);
y=awgn_channel(x,sigma);

counts=hist(y,centers);
bar(centers,counts/(binwidth*sum(counts)),1);
ylim([0 2])
xlabel('y')
ylabel('h(y|x=0)')