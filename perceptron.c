#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define TAXA_DE_APRENDIZADO 0.1
#define NUMERO_DE_TREINOS 100
#define NUMERO_DE_ENTRADAS 2

// Função de ativação

int funcaoDegrau(float soma)
{
    if (soma >= 0) return 1;
    else return 0;
}

// Treinamento do Perctron

void treinarPerceptron(float pesos[], float entradas[][NUMERO_DE_ENTRADAS], int saidasEsperadas[], int numAmostras) 
{
   float erro, saida, soma;
   int i, j, k;

   for (i=0; i < NUMERO_DE_TREINOS; i++) 
   {
        for (j=0; j < numAmostras; j++)
        {
            soma =0;

            // Calcula a soma ponderada das entradas
            for (k=0; k < NUMERO_DE_TREINOS; k++) 
            {
                soma += entradas[j][k] * pesos[k];
            }

            // Aplica a função de ativação
            saida = funcaoDegrau(soma);
            erro = saidasEsperadas[j] - saida;

            // Ajusta os pesos se houver erro
            if (erro != 0) 
            {
                for (int k=0; k < NUMERO_DE_ENTRADAS; k++) 
                {
                    pesos[k] += TAXA_DE_APRENDIZADO * erro * entradas[j][k];
                }
            }
        }
    }
}

int main() 
{

    float pesos[NUMERO_DE_ENTRADAS];

    // Inicializa os pesos com valores aleatórios
    srand(time(NULL));
    for (int i=0; i<NUMERO_DE_ENTRADAS; i++) 
    {
        pesos[i] = (float)rand() / RAND_MAX * 2.0 - 1.0; // Valores entre -1 e 1
    }

    // Dados de treinamento para função lógica "E"
    float entradas[4][NUMERO_DE_ENTRADAS] = {{0,0}, {0,1}, {1,0}, {1,1}};
    int saidasEsperadas[4] = {0, 0, 0, 1};

    //Treina o perceptron
    treinarPerceptron(pesos, entradas, saidasEsperadas, 4);

    // Testa o perceptron treinado
    for (int i = 0; i<4; i++)
    {
        float soma = 0;
        for (int j = 0; j < NUMERO_DE_ENTRADAS; j ++)
        {
            soma += entradas[i][j] * pesos[j];
        }
        printf("Entrada: [%f, %f] - Saída: %d\n", entradas[i][0], entradas[i][1], funcaoDegrau(soma));
    }
    
    return 0;

}