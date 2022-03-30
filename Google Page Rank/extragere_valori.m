function [val1 val2] = extragere_valori(nume)
  %functie ce extrage din fisierul
  %de intrare valorile lui 'val1' si 'val2'
  
  %citesc numarul de noduri 'N'
  file_input = fopen(nume, "r");
  lines = fgetl(file_input);
  N = str2num(lines);
  
  %citesc cele 'N' linii
  for i = 1 : N
    lines = fgetl(file_input);
  endfor

  %citesc valoarea 'val1'
  lines = fgetl(file_input);
  val1 = str2num(lines);
  
  %citesc valoarea 'val2'
  lines = fgetl(file_input);
  val2 = str2num(lines);
  
  fclose(file_input);

endfunction
