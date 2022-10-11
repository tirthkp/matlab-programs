x = imread('cameraman.tif');
NI = imnoise(x,'salt & pepper');
NI1 = im2double(NI);

NL = imnoise(x,'gaussian');
NL1 = im2double(NL);

f = [ 1, 1, 1; 1, 1, 1; 1, 1, 1];

subplot(2,5,1)
imshow(x);
title('Original');

subplot(2,5,2);
y= imnoise(x,'salt & pepper');
imshow(y);
title('Noice');

subplot(2,5,3)
cm=imfilter(NI1.^(1+1),f,'replicate');
cm1=cm./(imfilter(NI1.^1,f,'replicate')+eps);
imshow(cm1);
title('Q = 1');

subplot(2,5,4)
cm=imfilter(NI1.^(0+1),f,'replicate');
cm1=cm./(imfilter(NI1.^0,f,'replicate')+eps);
imshow(cm1);
title('Q = 0');

subplot(2,5,5)
cm=imfilter(NI1.^(-1+1),f,'replicate');
cm1=cm./(imfilter(NI1.^-1,f,'replicate')+eps);
imshow(cm1);
title('Q = -1');

subplot(2,5,6)
imshow(x);
title('Original');

subplot(2,5,7)
imshow(NL);
title('Noice Gaussian');

subplot(2,5,8)
cm=imfilter(NL1.^(1+1),f,'replicate');
cm1=cm./(imfilter(NL1.^1,f,'replicate')+eps);
imshow(cm1);
title('Gaussian Q = 1');

subplot(2,5,9)
cm=imfilter(NL1.^(0+1),f,'replicate');
cm1=cm./(imfilter(NL1.^0,f,'replicate')+eps);
imshow(cm1);
title('Gaussian Q = 0');

subplot(2,5,10)
cm=imfilter(NL1.^(-1+1),f,'replicate');
cm1=cm./(imfilter(NL1.^-1,f,'replicate')+eps);
imshow(cm1);
title('Gaussian Q = -1');
fprintf('92000103014 Tirth Patel');