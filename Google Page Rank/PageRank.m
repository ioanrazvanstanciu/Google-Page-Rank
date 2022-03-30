function [R1 R2] = PageRank(nume, d, eps)
  R1 = Iterative(nume, d, eps);
  R2 = Algebraic(nume, d);
  
  %formez matricea 'M' si extrag 'N'
  [M N] = creare_matrice(nume);
  
  %realizez noul nume pentru
  %fisierul de iesire
  nume_fisier_nou = strcat(nume, ".out");
  
  file_output = fopen(nume_fisier_nou, "w");
  
  fprintf(file_output, "%d\n", N);
  fprintf(file_output, "\n");
  
  fprintf(file_output, "%f\n", R1);
  fprintf(file_output, "\n");
  
  fprintf(file_output, "%f\n", R2);
  fprintf(file_output, "\n");

  [val1 val2] = extragere_valori(nume);
  for i = 1 : N
    [P_R1 v] = sortare_vector(R2);
    fprintf(file_output, "%d %d %f\n", i, v(i), Apartenenta(P_R1(i), val1, val2));
  endfor
  fclose(file_output);

endfunction
