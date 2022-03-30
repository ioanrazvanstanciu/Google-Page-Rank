function R = Iterative(nume, d, eps)
  %formez matricea 'M' si extrag 'N'
  [M N] = creare_matrice(nume);
  
  %formez 'R'
  R = ones(N, 1) .* (1 / N);
  R1 = (M * R) .* d + ones(N, 1) .* ((1 - d) / N);
  
  while norm(R1 - R) >= eps
    R = R1;
    R1 = (M * R) .* d + ones(N, 1) .* ((1 - d) / N);
  end

endfunction
