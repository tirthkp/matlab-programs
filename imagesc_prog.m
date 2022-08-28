i = imread('eight.tif');
figure; subplot(2,2,1); 
imagesc(i);
axis([0 400 0 400]);
colormap(gray);
subplot(2,2,2); imagesc(100,100,i); 
fprintf('92000103014 Tirth Patel\n')