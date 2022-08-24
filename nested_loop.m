for i = 2:10
   for j = 2:10
      if(~mod(i,j)) 
         break; % if factor found, not prime
      end 
   end
   if(j > (i/j))
      fprintf('%d is prime\n', i);
   end
end
fprintf('92000103014 Tirth Patel\n')