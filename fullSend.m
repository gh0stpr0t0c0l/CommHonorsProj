imageFile = "128_128.jpg";
bitFreq = 100; %bits/sec

[bits, dim] = encode(imageFile);
signal = bitsToSignal(bits, bitFreq);
