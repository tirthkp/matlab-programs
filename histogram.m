subplot(2,3,1)
x=imread('cameraman.tif');
imshow(x)
title('Original');

subplot(2,3,2)
imhist(x)
title('Regular histogram');

subplot(2,3,3)
h=imhist(x);
bar(h);
title('Bar');

subplot(2,3,4)
plot(h);
title('plot');

subplot(2,3,5)
stem(h);
title('stem');