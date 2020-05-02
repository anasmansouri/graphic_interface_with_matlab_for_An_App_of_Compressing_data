function [code1,code2,s] = myapp_huffman_shannon(text)

[code1,a] = myapp_huffman(text)
[code2,b] = myapp_shannon_fano(text)

if (a<b) s='algorithm du codage de shannon fano est plus performant que celui de huffman'
elseif (a>b) s='algorithm du codage de huffman est plus performant que celui de shannon fano'
else s='algorithm du codage de shannon fano et celui de huffman ont la meme performance'
end
end
