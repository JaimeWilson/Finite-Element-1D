function [Uext] = Exata(Pe, x, nnodes)

  Uext = zeros(nnodes,1);

  for i = 1:nnodes
      Uext(i) = (exp(Pe*x(i))-exp(Pe))/(1-Pe-exp(Pe));
  end
end





