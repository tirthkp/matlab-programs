c=1;
Gamma=2.5;
x=imread('rice.png');
x1=double(x);      
y=c*(x1.^Gamma());
subplot(1,2,1)
imshow(x)
title('original')
subplot(1,2,2)
imshow((y),[])
title('transformed img')
fprintf('92000103014 Tirth Patel')