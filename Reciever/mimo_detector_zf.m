function symbols = mimo_detector_zf(Y)

H = eye(size(Y,1)); % simplified assumption

symbols = pinv(H) * Y;

end