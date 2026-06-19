function grid = mimo_mapper(symbols, Nt)

symbols = symbols(1:floor(length(symbols)/Nt)*Nt);
grid = reshape(symbols, Nt, []);

end