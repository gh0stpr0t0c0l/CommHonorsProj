function originalImage = decoding(recievedBits, imageDim)
recievedBits = reshape(recievedBits, [8,length(recievedBits)/8])
%recievedBits(:,1)
for color = 1:3
    for i = 1:imageDim
        for j = 1:imageDim

            
            image(i,j,color) = bin2dec(recievedBits(), 8)
            bitString = [bitString, (dec2bin(image(i, j, color), 8) - '0')];
            


        end
    end
end

originalImage = bitString;
end

answer = decoding(answer);