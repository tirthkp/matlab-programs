subplot(2,2,1)
x=imread('pears.png');
imshow(x);
title('original');

subplot(2,2,2)
g = 1 ./ (1+ (100 ./(double(x) + eps)) .^ 20); 
imshow(g);
title('100-20');

subplot(2,2,3)
h = 1 ./ (1+ (150 ./(double(x) + eps)) .^ 20); 
imshow(h);
title('150-20');

subplot(2,2,4)
p = 1 ./ (1+ (100 ./(double(x) + eps)) .^ 120); 
imshow(p);
title('100-120');