function [get_fitness] = get_fitness(F_values)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
    get_fitness = zeros(1,length(F_values));
    F_min = min(F_values);
    for i = 1:length(F_values)
        get_fitness(i) = F_values(i) + 1e-4 - F_min;
    end
end

%经检验，无bug