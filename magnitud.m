v = [1: 2: 20];
sv = v.* v;       %the vector with elements 
                  % as square of v's elements
dp = sum(sv);     % sum of squares -- the dot product
mag = sqrt(dp);   % magnitude
disp('Magnitude:'); 
disp(mag);
fprintf('92000103014 Tirth Patel\n')