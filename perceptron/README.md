# Perceptron

O perceptron é um dos modelos mais simples de rede neural artificial, concebido para realizar tarefas de classificação binária, isto é, separar um conjunto de emtradas em duas categorias possíveis. Foi introduzido por Frank Rosenblatt em 1957, marcando um dos primeiros avanços significativos na pesquisa da inteligência articial.

A estrutura de um perceptron consite basicamente em uma camada de entrada e uma camada de saída. A camada de entada recebe sinais (ou dados), enquanto a camada de saída, há um conjunto de pesos e um bias (viés), que são ajustados durante o treinamento do perceptron para melhorar sua precisão na tarefa de classificação.

O funcionamento do percetron segue alguns passos simples:

* 1. Combinação Linear: Primeiro, cada entrada é mutiplicada pelo seu peso correspondente. Todos esses produtos são somados, justamente com o bias.

* 2. Função de Ativação: A soma obtida é então passada por uma função de ativação, que neste caso é tipicamente uma função degrau. Se o resultado for maior que um limiar, o perceptron produz uma saída (por exemplo, 1), caso contrário, produz outra (por exemplo, 0).

* 3. Ajustes de Pesos: Durante o treinamento, os pesos são ajustados com base nos erros das previsões, usando um processo chamado regra de aprendizagem de Hebbian, que é uma versão simplificada do que se conhece como aprendizaado supervisionado.

Apesar de sua simplicidade e limitações (por exemplo, só pode classificar dados lineares separáveis), o perceptron pavimentou o caminho para o desenvolvimento de redes neurais masi complexas e para a compreensão de princípios fundamentasi do aprendizado de máquina. Além disso, o conceito de perceptron é uma pedra angular na história da inteligência articial, ilustrando como regras simples podem ser usadas para processar informações.