function [Phi, GradPhi] = BasisFunc(X)


    Phi(1) = (1.0 - X)/2;      % funções bases linear
    Phi(2) = (1.0 + X)/2;      % funções bases linear

    GradPhi(1) = -0.5;         % derivada das funções base
    GradPhi(2) = 0.5;          % derivada das funções base
      
 end


