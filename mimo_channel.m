function [Y, H] = mimo_channel(X, Nt, Nr)

H = (randn(Nr,Nt) + 1j*randn(Nr,Nt)) / sqrt(2);

Y = H * X;

end