subplot(1,2,1)
load trees
BW = im2bw(X,map,0.4);
imshow(X,map)
subplot(1,2,2)
imshow(BW)
fprintf('92000103014 Tirth Patel\n')