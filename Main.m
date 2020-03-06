global CROSS_RATE 
global MUTATION_RATE
global POP_SIZE 
global DNA_SIZE 

global X_BOUND

DNA_SIZE = 10    ;        % DNA length
POP_SIZE = 100   ;        % population size
CROSS_RATE = 0.8;         % �������(DNA���滥��)
MUTATION_RATE = 0.003;  
N_GENERATIONS = 50;
X_BOUND = [0, 5];


%������Ⱥ��������������
pop = randsrc(POP_SIZE,DNA_SIZE,[0,1]);
x = 0:0.025:5;
y =  sin(10.*x).*x + cos(2.*x).*x ;

for gen = 1:N_GENERATIONS
    %����DNA������������
    individuals = translateDNA(pop);
    F_values = Fun(individuals) ;
    
    %���ݿ��ӻ�
    figure(1)
    plt = plot(x,y,'b','linewidth',1.4);grid on
    axis([0 5 -10 8]),grid on
    hold on
    sct = scatter(individuals,F_values,'or');
    axis([0 5 -10 8]),grid on
    hold off
    
    %����Ӧ��
    fitness = get_fitness(F_values);
    
    %�������Ӧ�ȼ���Ӧ��ţ��Լ���Ѹ���
    [best_fitness,idx_of_best] = max(fitness);
    best_individual = translateDNA(pop(idx_of_best,:));
    
    %���䷱ֳ���
    pop = select(pop, fitness);
    pop_copy = pop;
    for i = 1:POP_SIZE
        parent = pop(i,:);          %ԭ��Ⱥ��Ϊ�״�
        child = crossover(parent, pop_copy); %�״�DNA���滥���õ��Ӵ�DNA
        child = mutate(child);               %�Ӵ�����ͻ��
        pop(i,:) = child;       % �״����Ӵ���ȡ��
    
    end
end
%���н����
best_fitness;
idx_of_best;
best_individual;

    