function [select] = select(pop, fitness)
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
global POP_SIZE  
global DNA_SIZE

select = zeros(POP_SIZE,DNA_SIZE);
p = fitness./sum(fitness);

for i = 1:POP_SIZE
    selected_index = randsrc(1,1,[[1:POP_SIZE];p]);
            %(5)randsrc(m,n,[alphabet;prob])参数m,n是生成矩阵的维度
            %alphabet是取值列表,prob是与alphabet
            %同维度的概率向量，分别对应着alphabet中的每个
            %元素可能出现的概率，其元素之和为1。
    select(i,:) = pop(selected_index,:);
end
end
%改之前测试过，应该没bug
