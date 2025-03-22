function stringOfBits = encoding(fileName)

image = imread(fileName);
image = double(image);

bitString = [1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0];

for color = 1:3
    for i = 1:size(image, 1)
        for j = 1:size(image, 1)

            
           
            bitString = [bitString, (dec2bin(image(i, j, color), 8) - '0')];
            


        end
    end
end

stringOfBits = bitString;
end

answer = encoding("8_8.png");