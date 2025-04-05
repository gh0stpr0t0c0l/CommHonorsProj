imageFile = "8_8.png";
bitFreq = 100; %bits/sec

[bits, dim] = encode(imageFile);
signal = bitsToSignal(bits, bitFreq);
