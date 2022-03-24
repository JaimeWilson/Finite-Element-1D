function [U] = Solution(Pe, nnodes, Nele, DomNodeID, dx)
  
  A = zeros(nnodes, nnodes);   % zere a matriz global
  b = zeros(nnodes, 1);        % zere o vetor global
      
  for iele = 1:Nele
    
    % Calcula a Matriz Elementar( A_elem, b_elem) elementar
    [A_elem, b_elem] = GetElemAb(iele, Nele, Pe, dx(iele));    %chamo uma rotina GetElemAb

    nlocalnodes = 2;
    for ilnode = 1:nlocalnodes
        ignode = DomNodeID(iele, ilnode);

        for jlnode = 1:nlocalnodes
            jgnode = DomNodeID(iele, jlnode);
            A(ignode, jgnode) = A(ignode, jgnode) + A_elem(ilnode, jlnode);
        end
        
        b(ignode) = b(ignode) + b_elem(ilnode);
    end

  end
  
  U = A\b;
  
end