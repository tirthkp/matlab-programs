subplot(1,2,1)
I = imread('moon.tif');
imshow(I)
subplot(1,2,2)
I16 = uint16(I);
J = immultiply(I16,I16);
imshow(J)
fprintf('92000103014 Tirth Patel\n')