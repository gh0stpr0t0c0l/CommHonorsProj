function imageBits = parse(bitString, imageDim, binary)
    tempBits = char(bitString+'0');
    tempBits = extractAfter(tempBits,'1111000011110000');
    tempBits = tempBits(1:(imageDim^2*8*3));
    if binary
        tempBits = [tempBits, tempBits, tempBits];
    end
    imageBits = tempBits - '0';
end