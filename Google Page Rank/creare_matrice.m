function [M N] = creare_matrice(nume)
  %functia realizeaza matricea 'M' si extrage
  %numarul de noduri 'N'
  
  %citesc numarul de noduri 'N'
  file_input = fopen(nume, "r");
  lines = fgetl(file_input);
  N = str2num(lines);
 
  %formez 'A' si 'K_inv'
  A = zeros(N);
  K_inv = zeros(N);
  for i = 1 : N
    lines = fgetl(file_input);
    citire_linii = str2num(lines);
    val = length(citire_linii);
    for j = 3 : val
      if citire_linii(1) ~= citire_linii(j)
        A(i, citire_linii(j)) = 1;
      endif
    endfor
    k = sum(A(i, :));
    K_inv(i, i) = 1 / k;
  endfor
  fclose(file_input);  
  
  %formez 'M', unde 'K_inv' este o
  %matrice diagonala
  M = zeros(N);
  M = (K_inv * A)';

endfunction
