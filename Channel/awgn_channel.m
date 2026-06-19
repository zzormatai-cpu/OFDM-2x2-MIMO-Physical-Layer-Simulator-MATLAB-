function rx = awgn_channel(tx, SNRdB)

rx = awgn(tx, SNRdB, 'measured');

end