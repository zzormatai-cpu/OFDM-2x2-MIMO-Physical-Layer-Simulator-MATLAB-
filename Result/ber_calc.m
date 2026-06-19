function err = ber_calc(tx, rx)

L = min(length(tx), length(rx));
err = sum(tx(1:L) ~= rx(1:L)) / L;

end