function y=mulaw(x)
% Fuegen Sie hier Ihren Code ein
mu=255;
y=sign(x).*log(1+mu.*abs(x))/log(1+mu);