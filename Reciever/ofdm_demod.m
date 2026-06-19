function grid = ofdm_demod(rx, Nfft, cp)

rx = rx(cp+1:end);

grid = fft(rx, Nfft);

end