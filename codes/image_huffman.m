% ************************ 
% Hufmman Coding Example % 
%  By Mansouri Anas  
% ************************ 
 
% Setup the MATLAB console 
clc;
clear all; 
%close all; 
% Define the character string
[x,map]=imread('trees.tif');
imshow(x)
[n m]=size(x);
X=[0:255];
P=imhist(x)
code=HuffmanCode(X,P);
EntropyCodeShow(code)
EntropyCodeTree(code,1);
x_e=EntropyEncoder(x,code);
x_d=EntropyDecoder(x_e,code);
figure;
imshow(x_d,[0 255])
l=0.0;
taux_compression=length(x_e)/(n*m*8)%taux de compression
Rapport_de_compression=((n*m*8)-length(x_e))/((n*m*8))



