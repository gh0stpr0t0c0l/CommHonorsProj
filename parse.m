function imageBits = parse(bitString, imageDim)
    tempBits = char(bitString+'0');
    tempBits = extractAfter(tempBits,'1111000011110000');
    tempBits = tempBits(1:(imageDim^2*8*3));
    imageBits = tempBits - '0';
end