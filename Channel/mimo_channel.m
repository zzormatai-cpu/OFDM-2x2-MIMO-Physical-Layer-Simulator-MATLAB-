function rx = mimo_channel(tx, Nr)

Nt = 2;
H = (randn(Nr,Nt)+1j*randn(Nr,Nt))/sqrt(2);

rx = H * tx;

end