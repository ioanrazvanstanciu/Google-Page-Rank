function [A v] = sortare_vector(A)
  %functia are rolul de a sorta descrescator vectorul
  %dat si de a retine intr-un vector de indici pozitia
  %initiala
  
  n = length(A);
  
  %'v' reprezinta vectorul de indici
  v = [1 : n]';
  
  %voi utiliza algoritmul 'bubble sort' pentru
  %a sorta vectorul
  for j = 1 : n - 1
    for i = 1 : n - 1
      if A(i) < A(i + 1)
        temp = A(i);
        aux = v(i);
        A(i) = A(i + 1);
        v(i) = v(i + 1);
        A(i + 1) = temp;
        v(i + 1) = aux;
      endif
    endfor
  endfor

endfunction
