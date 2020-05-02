function [maxNbrOfzeros]= ZigZag(M)

% Zigzag
    s=[];
    for a=1:size(M,1) 
        for i=1:a 
           j=a-i+1 ;
           if (mod(a,2)==1)
               s=[s M(j,i)];
           else 
               s=[s M(i,j)];
           end
        end
    end
    for a=size(M,1)-1:-1:1
        for AB = [size(M,2)-a+1:size(M,2);size(M,2):-1:size(M,2)-a+1];
           i=AB(1);
           j=AB(2);
           if (mod(a,2)==1)
               s=[s M(j,i)];
           else 
               s=[s M(i,j)];
           end
        end
    end
    array = s;
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
    
    
