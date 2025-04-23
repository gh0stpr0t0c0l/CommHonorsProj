
y = [0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 0;
    1 1 1 1 1 1 1 1;
    1 1 1 1 1 1 1 1;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 0;];

newSignal = reshape(y, [1 64]);

%x = zeros([10000,1]);
%for i=1:length(x)
 %   x(i) = mod(i,2);
%end

y = 0:1:63
signal = [y',newSignal']