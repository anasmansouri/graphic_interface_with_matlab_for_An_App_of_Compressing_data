function [bin,taux_compression]=myapp_shannon_fano(text) 
 bin=''
SIG = text

 symboles=unique(SIG)
 length(symboles);
 %find proba
for i=1:length(symboles)
    k=findstr(SIG,symboles(i))
    n=length(k)
    Pr(i)=n/length(SIG)
end
Pr
symboles=double(symboles);
m_code=ShannonFanoCode(symboles,Pr)
code2=EntropyEncoder(SIG,m_code)
[n, m] = size(code2)
s='  '
for i=1:m
    bin= [bin,s,num2str(code2{1,i})]
end 
taux_compression=length(code2)/(length(SIG)*8)
end