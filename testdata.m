x = zeros([10000,1]);
for i=1:length(x)
    x(i) = mod(i,2);
end

y = 0:(1/20):499.95
signal = [y',x]