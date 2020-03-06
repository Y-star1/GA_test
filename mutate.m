function [mutate] = mutate(child)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
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
%经测试，无bug

