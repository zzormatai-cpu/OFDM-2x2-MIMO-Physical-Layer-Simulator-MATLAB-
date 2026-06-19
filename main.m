clear; clc; close all;
addpath(genpath(pwd));
cfg = config();

BER = zeros(size(cfg.SNRdB));

for i = 1:length(cfg.SNRdB)

    total_err = 0;

    for k = 1:1000

        %% TX
        bits = randi([0 1], cfg.Nbits, 1);
        symbols = qpsk_mod(bits);

        %% MIMO mapping (2 streams)
        symbols = symbols(1:floor(length(symbols)/2)*2);
        X = reshape(symbols, 2, []);

        %% Channel
        [Y, H] = mimo_channel(X, cfg.Nt, cfg.Nr);

        %% Noise
        noise = sqrt(1/(10^(cfg.SNRdB(i)/10))) * ...
            (randn(size(Y)) + 1j*randn(size(Y))) / sqrt(2);

        Y = Y + noise;

        %% Receiver
        Xhat = mimo_detector_zf(Y, H);

        rx_symbols = Xhat(:);

        bits_hat = qpsk_demod(rx_symbols);

        %% BER
        total_err = total_err + ber_calc(bits, bits_hat);

    end

    BER(i) = total_err / 1000;

    fprintf("SNR=%d dB | BER=%e\n", cfg.SNRdB(i), BER(i));

end

figure;
semilogy(cfg.SNRdB, BER, 'o-','LineWidth',2);
grid on;
xlabel('SNR (dB)');
ylabel('BER');
title('Clean 2x2 MIMO PHY Simulation');


    BER(i) = total_err/1000;

    fprintf("SNR=%d dB | BER=%e\n", cfg.SNRdB(i), BER(i));


plot_results(cfg.SNRdB, BER);



