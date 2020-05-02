function [maxNbrOfzeros]= vertical(M)

% vertical
resultV =[];
for col  = 1:size(M,2)
    for raw = 1 : size(M,1)
        resultV = [resultV, M(raw,col)];
    end 
end
array =  resultV;

  nbrOf0 =0;
    maxNbrOfzeros =0
    for i = 1 : length(array)
        if array(i) ==0
            nbrOf0 = nbrOf0 +1;
        else
            if maxNbrOfzeros < nbrOf0
                maxNbrOfzeros = nbrOf0;
            end
            nbrOf0 = 0;
        end
    end 


end