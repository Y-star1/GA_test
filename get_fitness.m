function [get_fitness] = get_fitness(F_values)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    get_fitness = zeros(1,length(F_values));
    F_min = min(F_values);
    for i = 1:length(F_values)
        get_fitness(i) = F_values(i) + 1e-4 - F_min;
    end
end

%�����飬��bug