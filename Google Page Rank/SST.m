function X = SST(A, b)
  %aceasta functie a fost realizata
  %conform indicatiilor din laborator
  [n n] = size(A);
  X = zeros(n, 1);
  
  X(n) = b(n) / A(n, n);
  
  for i = (n - 1) : -1 : 1
    X(i) = (b(i) - A(i, i+1 : n) * X(i+1 : n)) / A(i, i);
  endfor

endfunction
