
%y = [0 0 0 1 1 0 0 0;
%    0 0 0 1 1 0 0 0;
%    0 0 0 1 1 0 0 0;
%    1 1 1 1 1 1 1 1;
%    1 1 1 1 1 1 1 1;
%    0 0 0 1 1 0 0 0;
%    0 0 0 1 1 0 0 0;
%    0 0 0 1 1 0 0 0;];

y = [1 0 0 1 1 0 0 1;
    0 0 0 1 1 0 0 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 0;
    1 0 0 1 1 0 0 1];

z = imread('rick20.png');
z = z(:,:,1);
z = z > 128;
imagesc(z)
newSignal = reshape(y, [1 64]);

newSignal = cat(2, [1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0], newSignal , [0 0]);
%x = zeros([10000,1]);
%for i=1:length(x)
 %   x(i) = mod(i,2);
%end

<<<<<<< HEAD
y = 0:1:85;
=======
y = 0:1/2:85/2;
>>>>>>> 47d5d249c1381ce28a561150cc1770caa9f6f3b7
signal = [y',newSignal'];