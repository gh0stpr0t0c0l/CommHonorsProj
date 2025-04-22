x = zeros([10000,1]);
for i=1:length(x)
    x(i) = mod(i,2);
end

y = 0:1:9999
signal = [y',x]