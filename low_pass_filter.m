i = imread('Cameraman.tif');
Fi = ones(3,3);

subplot(2,3,1)
imshow(i)
title('orignal image')

subplot(2,3,2)
ni = imnoise(i,'gaussian');
imshow(ni)
title('img with guass. noise')

subplot(2,3,3)
dni = im2double(ni);
op = 3*3./(imfilter(1./(dni+eps),Fi,'replicate'));
imshow(op)
title('output image')

subplot(2,3,4)
imshow(i)
title('orignal image')

subplot(2,3,5)
ni = imnoise(i,'salt & pepper');
dni = im2double(ni);
imshow(ni)
title('image with salt & pepper')

subplot(2,3,6)
op = 3*3./(imfilter(1./(dni+eps),Fi,'replicate'));
imshow(op)
title('output image')
close
