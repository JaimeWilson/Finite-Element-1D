function [Phi, GradPhi] = BasisFunc(X)


    Phi(1) = (1.0 - X)/2;      % fun��es bases linear
    Phi(2) = (1.0 + X)/2;      % fun��es bases linear

    GradPhi(1) = -0.5;         % derivada das fun��es base
    GradPhi(2) = 0.5;          % derivada das fun��es base
      
 end


