function Xhat = mimo_detector_zf(Y, H)

Xhat = pinv(H) * Y;

end