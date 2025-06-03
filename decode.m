function originalImage = decode(receivedBits, imageDim, binary)
if binary
    originalImage = reshape(receivedBits, [imageDim, imageDim]);
else
    receivedBits = reshape(receivedBits, [8,length(receivedBits)/8]);
    receivedBits2 = zeros(1,size(receivedBits,2));
    for i = 1:size(receivedBits,2)
        receivedBits2(i) = bin2dec(char(transpose(receivedBits(:,i))+'0'));
    end
    originalImage(:,:,1) = reshape(receivedBits2(1:(imageDim^2)),[imageDim,imageDim]);
    originalImage(:,:,2) = reshape(receivedBits2((imageDim^2+1):(2*(imageDim^2))),[imageDim,imageDim]);
    originalImage(:,:,3) = reshape(receivedBits2((2*(imageDim^2)+1):(3*(imageDim^2))),[imageDim,imageDim]);
    originalImage = originalImage/255;
end
figure
imagesc(originalImage)
end
