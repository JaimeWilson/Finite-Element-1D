function [nnodes, DomNodeID] = GlobalPointer(Nele)

    nnodes = Nele + 1;
    DomNodeID = zeros(Nele, 2);
    
    for i = 1:Nele
      DomNodeID(i,1) = i;       % primer nó
      DomNodeID(i,2) = i+1;     % segundo nó
    end

end


    

    

