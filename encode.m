function [stringOfBits, imageDim] = encode(fileName)

image = imread(fileName);
figure
imagesc(image)
image = double(image);

bitString = [1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0];

for color = 1:3
    for j = 1:size(image, 1)
        for i = 1:size(image, 1)

            
           
            bitString = [bitString, (dec2bin(image(i, j, color), 8) - '0')];
            


        end
    end
end

stringOfBits = bitString;
imageDim = size(image, 1);
end