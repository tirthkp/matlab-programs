subplot(1,2,1)
I = imread('rice.png');
imshow(I)
subplot(1,2,2)
J = imresize(I, 0.2);
imshow(J)
fprintf('92000103014 Tirth Patel\n')