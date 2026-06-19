function tx = ofdm_mod(grid, Nfft, cp)

tx = [];

for i = 1:size(grid,1)

    x = ifft(grid(i,:), Nfft);

    tx = [tx; x(end-cp+1:end) x];

end

end