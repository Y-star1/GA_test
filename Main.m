global CROSS_RATE 
global MUTATION_RATE
global POP_SIZE 
global DNA_SIZE 

global X_BOUND

DNA_SIZE = 10    ;        % DNA length
POP_SIZE = 100   ;        % population size
CROSS_RATE = 0.8;         % 交配概率(DNA交叉互换)
MUTATION_RATE = 0.003;  
N_GENERATIONS = 50;
X_BOUND = [0, 5];


%生成种群及环境（函数）
pop = randsrc(POP_SIZE,DNA_SIZE,[0,1]);
x = 0:0.025:5;
y =  sin(10.*x).*x + cos(2.*x).*x ;

for gen = 1:N_GENERATIONS
    %翻译DNA，求个体表现型
    individuals = translateDNA(pop);
    F_values = Fun(individuals) ;
    
    %数据可视化
    figure(1)
    plt = plot(x,y,'b','linewidth',1.4);grid on
    axis([0 5 -10 8]),grid on
    hold on
    sct = scatter(individuals,F_values,'or');
    axis([0 5 -10 8]),grid on
    hold off
    
    %求适应度
    fitness = get_fitness(F_values);
    
    %求最高适应度及对应序号，以及最佳个体
    [best_fitness,idx_of_best] = max(fitness);
    best_individual = translateDNA(pop(idx_of_best,:));
    
    %交配繁殖后代
    pop = select(pop, fitness);
    pop_copy = pop;
    for i = 1:POP_SIZE
        parent = pop(i,:);          %原种群作为亲代
        child = crossover(parent, pop_copy); %亲代DNA交叉互换得到子代DNA
        child = mutate(child);               %子代基因突变
        pop(i,:) = child;       % 亲代被子代所取代
    
    end
end
%运行结果：
best_fitness;
idx_of_best;
best_individual;

    