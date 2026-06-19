function symbols = qpsk_mod(bits)

bits = reshape(bits,2,[])';

symbols = (2*bits(:,1)-1) + 1j*(2*bits(:,2)-1);
symbols = symbols / sqrt(2);

end