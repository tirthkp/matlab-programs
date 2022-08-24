subplot(3,2,1)
a=imread('rice.png');
imshow(a);
title('input image');
subplot(3,2,2)
imhist(a)
title('Histogram');
subplot(3,2,3)
b=imread('cameraman.tif');
imshow(b);
title('Reference image');
subplot(3,2,4)
imhist(b);
title('histogrm');
subplot(3,2,5)
m=imhistmatch(a,b);
imshow(m);
title('Matched image');
subplot(3,2,6)
imhist(m);
title('histogram');