x = zeros([10000,1]);
for i=1:length(x)
    x(i) = mod(i,2);
end

y = 0:(1/10):999.9
signal = [y',x]