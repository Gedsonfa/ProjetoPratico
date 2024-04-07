O algoritmo Perceptron, ou neurônio de McCulloch-Pitts, é um algoritmo de aprendizado supervisionado para classificadores binários. Um classificador binário é uma função que pode decidir se uma entrada, representada por um vetor de números, pertence a uma classe específica. É um tipo de classificador linear, ou seja, um algoritmo de classificação que faz suas previsões com base em um preditor linear​

​.

O Perceptron é um dos modelos mais simples de rede neural, consistindo de um único nó ou neurônio que recebe uma linha de dados como entrada e prevê um rótulo de classe. Isso é realizado calculando a soma ponderada das entradas, adicionando um viés e, em seguida, transformando essa ativação em um valor de saída ou previsão usando uma função de transferência, como a função de passo, que retorna 1 se a ativação for maior ou igual a zero, e 0 caso contrário​
​​

​.

O Perceptron ajusta iterativamente os pesos associados às características de entrada com base em classificações erradas, visando encontrar um limite de decisão que separe as classes. Ele continua até que todos os exemplos de treinamento sejam corretamente classificados ou até que um número pré-definido de iterações seja atingido​
​.

Criar um perceptron simples em C pode ser uma tarefa interessante e educativa, especialmente para entender como as redes neurais funcionam em um nível básico. O perceptron é um tipo de rede neural artificial inventada em 1958 por Frank Rosenblatt. É o bloco de construção mais simples de aprendizado de máquina, usado para classificação binária. O perceptron recebe várias entradas binárias ou de valor real, multiplica cada entrada por um peso, soma todos esses produtos e aplica uma função de ativação (por exemplo, uma função degrau) para produzir um único resultado binário.

Aqui está um exemplo simplificado de como você pode implementar um perceptron em C. Este exemplo é apenas para fins educativos e ilustra o conceito básico de um perceptron que aprende a função lógica "E".

Este código define uma função de ativação simples (degrau), uma função para treinar o perceptron ajustando seus pesos com base no erro da saída esperada e na entrada, e um main que inicializa os pesos aleatoriamente, define entradas e saídas esperadas para a função lógica "E", treina o perceptron com esses dados e, por fim, testa o perceptron com as entradas de treinamento para verificar se ele aprendeu corretamente.

Note que este é um exemplo muito básico e que, na prática, para problemas mais complexos e redes maiores, você usaria uma biblioteca de aprendizado de máquina já existente que oferece muito mais funcionalidades e otimizações.

> gcc perceptron.c -o per

> ./per