function [translateDNA] = translateDNA(pop)
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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
%��֮ǰ�������Ӧ����bug