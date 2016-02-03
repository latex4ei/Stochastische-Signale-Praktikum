function M=mixed_positions(N,L,muX,muY,sigma,q)
M=zeros(N,2); % Matrix initialisieren

H=hotspot_positions(N,L,muX,muY,sigma);
U=uniform_positions(N,L);
b=binornd(1,q,N,1);

M(b==1,:)=H(b==1,:);
M(b==0,:)=U(b==0,:);