function [A_elem, b_elem] = GetElemAb(iele,Nele,Pe,dx)

    nlocalnodes = 2;
    ngp = 2;
    
    XIGP = [-0.57735 0.57735];
    WGP  = [1.0 1.0];
    
    A_elem = zeros(nlocalnodes,nlocalnodes);
    b_elem = zeros(nlocalnodes, 1);
    
    for igp = 1:ngp                   % faço o loop nos pontos de Gauss
        
      XI = XIGP(igp);                 % defino cordenadas nos pontos de gauss
      W = WGP(igp);                   % defino cordenadas nos pontos de gauss
      
      [Phi, GradPhi] = BasisFunc(XI); % calculo as funções base
      
      for ilnode = 1: nlocalnodes
        for jlnode = 1:nlocalnodes
          A_elem(ilnode, jlnode) = A_elem(ilnode, jlnode) + ...
            W*(GradPhi(ilnode) * GradPhi(jlnode)* 2/dx + ...
            Pe * Phi(ilnode)*GradPhi(jlnode));
        end
        b_elem(ilnode) =  0;
      end
      
    end
    
    if (iele == 1)
      A_elem(1,1) = A_elem(1,1) + 1.0;
      b_elem(1) = 1.0;
    elseif (iele == Nele)
      A_elem(2,1) = 0.0;
      A_elem(2,2) = 1.0;
    end
    
    
 
end

