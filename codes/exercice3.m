% ************************
% Hufmman Coding Example 
% %  By : MANSOURI ANAS
% ************************ 
 
% Setup the MATLAB console
clc;
clear all; 
%close all;
fileID =fopen('fichier.txt','r');
SIG=fscanf(fileID,'%c');
symboles=unique(SIG); % supprimer la redondance  
for i=1:length(symboles)
  k=findstr(SIG,symboles(i));
  n=length(k);
  Pn(i)=n/length(SIG);
end
Pn;
symboles=double(symboles);
m_code=huffmandict(symboles,Pn);
code2=huffmanenco(SIG,m_code);
code3=huffmandeco(code2,m_code);
char(code3)