subplot(3,2,1)
f = imread('cameraman.tif');
g = imadjust (f, [0 1], [1 0]);
imshow(f);
subplot(3,2,2)
imshow (g);
subplot(3,2,3)
imshow(f);
subplot(3,2,4)
g = imadjust (f, [0.5 0.75], [0 1], 0.5);
imshow(g);
subplot(3,2,5)
imshow(f);
subplot(3,2,6)
g = imadjust (f, [0.5 0.75], [0.6 1], 0.5);
imshow(g);
fprintf('92000103014 Tirth Patel')