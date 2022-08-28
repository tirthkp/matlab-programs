subplot(1,2,1)
f = imread('cameraman.tif');
g = imadjust (f, [0 1], [1 0]);
imshow(f);
subplot(1,2,2)
imshow (g);
fprintf('92000103014 Tirth Patel')