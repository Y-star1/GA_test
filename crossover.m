function [crossover] = crossover(parent, pop)
%UNTITLED2 此处显示有关此函数的摘要
%Per parent in 1 line
%
global CROSS_RATE
global POP_SIZE  
global DNA_SIZE
%}
%   此处显示详细说明


%
r = rand;
if r < CROSS_RATE
    pop_index = randsrc(1,1,1:POP_SIZE);   %select another individual from pop
    for i = 1:DNA_SIZE
        cross_points = randsrc(1, 1,[0,1]); %choose crossover points
        if cross_points == 1
            parent(i) = pop(pop_index, i);   %mating and produce one child
        end
    end
end
crossover = parent;
end
%经测试，无bug
