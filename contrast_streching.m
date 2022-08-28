f=imread('rice.png');
g = 1 ./ (1+ (100 ./(double(f) + eps)) .^ 20);
subplot(1,2,1)
imshow(f)
subplot(1,2,2)
imshow(g)
fprintf('92000103014 Tirth Patel\n')