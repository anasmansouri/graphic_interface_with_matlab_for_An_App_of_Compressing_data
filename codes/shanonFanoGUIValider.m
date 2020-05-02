%*********************************************%
%                  ENSA FES                   %
%              2 eme Annee GSEII              %
%*********************************************%   
%  Title    :  Shannon Fano Coding Example    % 
%  TP       :  2                              %
% ********************************************%
%  --File : ReadFile                          %
%  --Author : anas mansouri                   %
%  --Created : 28/03/2020                     %
%******************************************** %
%  -Description :                             %
%   le codage du contenue d un fichier texte  %            
%*********************************************%
%*********************************************%
%              Matlab program                 %
%*********************************************% 
 
% Setup the MATLAB console
clc;
clear all; 
msg ="anas mansouri";
SIG = convertStringsToChars(msg);
symboles=unique(SIG); % supprimer la redondance  
for i=1:length(symboles)
  k=findstr(SIG,symboles(i));
  n=length(k);
  Pn(i)=n/length(SIG);
end
Pn;
symboles=double(symboles);
m_code=ShannonFanoCode(symboles,Pn);
code2=EntropyEncoder(SIG,m_code);
code3=EntropyDecoder(code2,m_code);
char(code3)