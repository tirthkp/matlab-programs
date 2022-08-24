a=imread('cameraman.tif');
subplot(2,2,1);
imshow(a);
[M,N]=size(a);
b=a;
title 'Original Image';
r1=100;
r2=200;
   for i=1:1:M
        for j=1:1:N
            if a(i,j)>=r1 && a(i,j)<=r2
                b(i,j)=255;
            else
                b(i,j)=a(i,j);
            end
        end
   end
subplot(2,2,2);
imshow(b);
title 'Output';
fprintf('92000103014 Tirth Patel\n')