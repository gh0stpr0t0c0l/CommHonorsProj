function signal = bitsToSignal(stringOfBits, bitFreq)
   bitTime = (1/bitFreq);
   totalTime = (length(stringOfBits)-1)*bitTime;
   time = 0:bitTime:totalTime;
   fprintf("Total Time: %fs\n", totalTime(1,end))
   signal = [transpose(time),transpose(stringOfBits)];
end
