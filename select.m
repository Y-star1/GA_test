function [select] = select(pop, fitness)
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global POP_SIZE  
global DNA_SIZE

select = zeros(POP_SIZE,DNA_SIZE);
p = fitness./sum(fitness);

for i = 1:POP_SIZE
    selected_index = randsrc(1,1,[[1:POP_SIZE];p]);
            %(5)randsrc(m,n,[alphabet;prob])����m,n�����ɾ����ά��
            %alphabet��ȡֵ�б�,prob����alphabet
            %ͬά�ȵĸ����������ֱ��Ӧ��alphabet�е�ÿ��
            %Ԫ�ؿ��ܳ��ֵĸ��ʣ���Ԫ��֮��Ϊ1��
    select(i,:) = pop(selected_index,:);
end
end
%��֮ǰ���Թ���Ӧ��ûbug
