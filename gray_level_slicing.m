a=imread('cameraman.tif');
subplot(1,3,1);
imshow(a);
[M,N]=size(a);
b=a;
c=a;
title 'Original Image';
r1=100;
r2=200;
   for i=1:1:M
        for j=1:1:N
            if a(i,j)>=r1 && a(i,j)<=r2
                b(i,j)=255;
            else
                b(i,j)=0;
            end
        end
   end
   for i=1:1:M
        for j=1:1:N
            if a(i,j)>=r1 && a(i,j)<=r2
                c(i,j)=255;
            else
                c(i,j)=a(i,j);
            end
        end
   end
subplot(1,3,2);
imshow(b);
title '0-255';
subplot(1,3,3)
   imshow(c);
title 'as it is';
fprintf('92000103014 Tirth Patel\n')