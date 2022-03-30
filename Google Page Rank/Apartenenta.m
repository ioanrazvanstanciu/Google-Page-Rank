function y = Apartenenta(x, val1, val2)
  %pentru ca functia 'u(x)' sa fie continua, limitele laterale
  %trebuie sa fie egale, de aici rezultand valorile pentru 'a' si 'b'
  
  a = 1 / (val2 - val1);
  b = (-1) * a * val1;
  
  if x < val1
    y = 0;
    else
      if x >= val1 && x <= val2
        y = a * x + b;
        else 
          y = 1;
      endif
  endif

endfunction
