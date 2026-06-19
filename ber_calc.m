function ber = ber_calc(bits_tx, bits_rx)

L = min(length(bits_tx), length(bits_rx));

ber = sum(bits_tx(1:L) ~= bits_rx(1:L)) / L;

end