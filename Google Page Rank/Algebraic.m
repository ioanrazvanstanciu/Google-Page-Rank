function R = Algebraic(nume, d)
  %formez matricea 'M' si extrag 'N'
  [M N] = creare_matrice(nume);
  
  %formez 'R'
  T = eye(N) - d * M;
  R = PR_Inv(T) * (ones(N, 1) .* ((1 - d) / N));

endfunction
