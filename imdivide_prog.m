subplot(1,2,1)
I = imread('rice.png');
imshow(I)
subplot(1,2,2)
background = imopen(I,strel('disk',15));
Ip = imdivide(I,background);
imshow(Ip,[])
fprintf('92000103014 Tirth Patel\n')