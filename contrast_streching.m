image = imread('cameraman.tif');
stretched_Image = imadjust(image, stretchlim(image, [0.05, 0.95]),[]);
subplot(1,2,1)
imshow(image)
title('Original Image');
subplot(1,2,2)
imshow(stretched_Image) 
title('Strethced Image');
fprintf('92000103014 Tirth Patel\n')