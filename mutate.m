function [mutate] = mutate(child)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global DNA_SIZE
global MUTATION_RATE

for point = 1:DNA_SIZE
    r = rand;
    if r < MUTATION_RATE
        child(point) = 1 - child(point);
    end
end
mutate = child;
end
%�����ԣ���bug

