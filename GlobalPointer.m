function [nnodes, DomNodeID] = GlobalPointer(Nele)

    nnodes = Nele + 1;
    DomNodeID = zeros(Nele, 2);
    
    for i = 1:Nele
      DomNodeID(i,1) = i;       % primer n�
      DomNodeID(i,2) = i+1;     % segundo n�
    end

end


    

    

