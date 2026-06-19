function plot_results(SNR, BER)

figure;
semilogy(SNR, BER,'o-','LineWidth',2);
grid on;
xlabel('SNR (dB)');
ylabel('BER');
title('MIMO-OFDM PHY Simulation');

end