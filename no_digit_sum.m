%{
Problem : 49

Add all the integers from 1 to n in which the digit m does not appear. m will always be a single digit integer from 0 to 9.

 no_digit_sum(10,1) = 44

because 1 and 10 are excluded from the sum and

 sum(2:9) = 44

%}
function total = no_digit_sum(n,m)
  total = 0;
  for i = 1:n
    flag = 1;
    if(i>10)
       b=num2str(i);
       for j = 1:strlength(b)
        c = b(:,j);
        if(c == string(m))
           flag = 0;
           break;
        end
       end
    end
    if (flag == 1)
        total = total+i;
    end
  end
  total = total-m;
end
