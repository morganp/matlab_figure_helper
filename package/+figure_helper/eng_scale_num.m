function [str] = eng_scale_num(num)
    str = arrayfun(@(x) eng_scale_num_sub(x) , num, 'UniformOutput', false); 

  function [str]=eng_scale_num_sub(num)
  
    %10^18	  exa	  E
    %10^15	  peta	P
    %10^12	  tera	T
    %10^9     giga	G
    %10^6     mega	M
    %10^3     kilo	k
    %10^-3	  milli	m
    %10^-6	  micro	μ
    %10^-9	  nano	n
    %10^-12   pico	p
    %10^-15   femto	f
    %10^-18   atto	a

    abs_num = abs(num) ;

    if (abs_num >= 10^18) 
      str = [num2str(floor(num*10^-18)), 'E'] ;

    elseif (abs_num >= 10^15)
      str = [num2str(floor(num*10^-15)), 'P'] ;

    elseif (abs_num >= 10^12)
      str = [num2str(floor(num*10^-12)), 'T'] ;

    elseif (abs_num >= 10^9)
      str = [num2str(floor(num*10^-9)),  'G'] ;

    elseif (abs_num >= 10^6)
      str = [num2str(floor(num*10^-6)),  'M'] ;

    elseif (abs_num >= 10^3)
      str = [num2str(floor(num*10^-3)),  'k'] ;

    elseif (abs_num == 0 )
       str = [num2str(floor(num))] ;

    elseif ((abs_num < 10^-15))
      str = [num2str(floor(num*10^18)),  'a'] ;

    elseif ((abs_num < 10^-12) && (abs_num >= 10^-15))
      str = [num2str(floor(num*10^15)),  'f'] ;

    elseif ((abs_num < 10^-9)  && (abs_num >= 10^-12))
      str = [num2str(floor(num*10^12)),  'p'] ;

    elseif ((abs_num < 10^-6)  && (abs_num >= 10^-9))
      str = [num2str(floor(num*10^9)),   'n'] ;

    elseif ((abs_num < 10^-3 ) && (abs_num >= 10^-6))
      str = [num2str(floor(num*10^6)),   'u'] ;

    elseif ((abs_num < 1)      && (abs_num >= 10^-3 )) 
      str = [num2str(floor(num*10^3)),   'm'] ;

    else 
      str = [num2str(floor(num))] ;
    end
 end
end

