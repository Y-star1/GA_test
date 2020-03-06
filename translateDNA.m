function [translateDNA] = translateDNA(pop)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
global DNA_SIZE
s = size(pop);
POP_SIZE = s(1);

dec = zeros(1,POP_SIZE);
for i = 1:POP_SIZE
    a = '';
    for j = 1:DNA_SIZE
        a=strcat(a,num2str(pop(i,j)));
    end
    dec(i) = bin2dec(a);
end
%translateDNA = dec;
translateDNA = dec.*5./1024;
end
%改之前检验过，应该无bug