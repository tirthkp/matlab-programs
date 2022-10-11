I =imread('cameraman.tif');
NI = imnoise(I,'salt & pepper');
NI1 = imnoise(I,'gaussian');
f = [ 1, 1, 1; 1, 1, 1; 1, 1, 1];
subplot(2,3,1);
imshow(I);
title('Original Image');

subplot(2,3,2);
imshow(NI);
title('Noise S & P Image');

subplot(2,3,3);
c2=ordfilt2(NI,1,f);
c3=ordfilt2(NI,9,f);
G=imlincomb(0.5,c2,0.5,c3);
imshow(G);
title('Midpoint S & P Filter');

subplot(2,3,4);
imshow(I);
title('Original Image');

subplot(2,3,5);
imshow(NI1);
title('Guassian Noise Image');

subplot(2,3,6);
c2=ordfilt2(NI1,1,f);
c3=ordfilt2(NI1,9,f);
G=imlincomb(0.5,c2,0.5,c3);
imshow(G);
title('Midpoint Guassian Filter');