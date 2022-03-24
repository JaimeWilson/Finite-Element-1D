function [x, dx] = Mesh(L, nnodes, Nele, DomNodeID)

  x = zeros(nnodes,1);         % coordenadas dos nós
  dx = zeros(Nele,1);          % tamanho dos elementos
  
  for i = 1:nnodes
      x(i) = L*((i-1)/(nnodes-1));  % quando i=1, x(1)=0; e quando e igual a nnodes x(nnodes)=L
  end

  %calculo do comprimento dos elementos
  
  for iele = 1:Nele 
    dx(iele) = x(DomNodeID(iele,2)) - x(DomNodeID(iele,1));   % defino o tamanho de cada elemento, ela esta preparada para um dx nao uniforme
  end
end





