function imageBits = parse(bitString, imageDim, binary)
    tempBits = char(bitString+'0');
    tempBits = extractAfter(tempBits,'1111000011110000');
    if binary
        tempBits = tempBits(1:(imageDim^2));
    else
        tempBits = tempBits(1:(imageDim^2*8*3));
    end
    imageBits = tempBits - '0';
end