function bits = qpsk_demod(symbols)

bits = zeros(length(symbols)*2,1);

bits(1:2:end) = real(symbols) > 0;
bits(2:2:end) = imag(symbols) > 0;

end