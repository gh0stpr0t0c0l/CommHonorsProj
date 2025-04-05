function originalImage = decoding(recievedBits, imageDim)
recievedBits = reshape(recievedBits, [8,length(recievedBits)/8]);
recievedBits2 = zeros(1,size(recievedBits,2));
for i = 1:size(recievedBits,2)
    recievedBits2(i) = bin2dec(char(transpose(recievedBits(:,i))+'0'));
end
originalImage(:,:,1) = reshape(recievedBits2(1:(imageDim^2)),[imageDim,imageDim]);
originalImage(:,:,2) = reshape(recievedBits2((imageDim^2+1):(2*(imageDim^2))),[imageDim,imageDim]);
originalImage(:,:,3) = reshape(recievedBits2((2*(imageDim^2)+1):(3*(imageDim^2))),[imageDim,imageDim]);
originalImage = originalImage/255;
imagesc(originalImage)
end

image2 = decoding(bits(17:end), dim);