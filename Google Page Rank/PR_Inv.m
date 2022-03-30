function B = PR_Inv(A)
  %realizez algoritmul 'Gram-Schmidt' conform
  %indicatiilor din laborator
  
  [m n] = size(A);
  
  Q = zeros(m, n);
  R = zeros(n);
  
  for j = 1 : n
    for i = 1 : j - 1
      R(i, j) = Q(:, i)' * A(:, j);
    endfor
    s = zeros(m, 1);
    for i = 1 : j - 1
      s = s + R(i, j) * Q(:, i);
    endfor
    aux = A(:, j) - s;
    R(j, j) = norm(aux, 2);
    Q(:, j) = aux / R(j, j);
  endfor

  %'Q' este o matrice ortogonala, iar
  %'B' este o matrice superior triunghiulara
  
  I = eye(n);
  
  for i = 1 : n
    B(:, i) = SST(R, (Q' * I(:, i)));
  endfor

endfunction
