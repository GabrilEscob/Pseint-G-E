#include <iostream>
#include <cstdlib>
#include <ctime>
#include <iomanip>

using namespace std;

// Definición de constantes
#define NUM_CANDIDATOS 3
#define NUM_VOTANTES 50
#define NUM_RONDAS 5

// Funciones
void inicializarMatriz(int votos[NUM_CANDIDATOS][NUM_RONDAS]);
void simularVotacion(int votos[NUM_CANDIDATOS][NUM_RONDAS]);
void mostrarResultados(int votos[NUM_CANDIDATOS][NUM_RONDAS], string candidatos[NUM_CANDIDATOS]);
void calcularGanador(int votos[NUM_CANDIDATOS][NUM_RONDAS], string candidatos[NUM_CANDIDATOS]);

int main() {
    srand(time(NULL));

    // Nombres de los candidatos
    string candidatos[NUM_CANDIDATOS];
    cout << "Ingrese los nombres de los " << NUM_CANDIDATOS << " candidatos:\n";
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        cout << "Candidato " << i + 1 << ": ";
        cin >> candidatos[i];
    }

    int votos[NUM_CANDIDATOS][NUM_RONDAS];

    char opcion;
    do {
        inicializarMatriz(votos);
        simularVotacion(votos);
        mostrarResultados(votos, candidatos);
        calcularGanador(votos, candidatos);

        cout << "\n¿Desea generar otra elección? (s/n): ";
        cin >> opcion;
    } while (opcion == 's' || opcion == 'S');

    return 0;
}

// Inicializa la matriz con ceros
void inicializarMatriz(int votos[NUM_CANDIDATOS][NUM_RONDAS]) {
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        for (int j = 0; j < NUM_RONDAS; j++) {
            votos[i][j] = 0;
        }
    }
}

// Simula las votaciones aleatorias
void simularVotacion(int votos[NUM_CANDIDATOS][NUM_RONDAS]) {
    for (int j = 0; j < NUM_RONDAS; j++) {
        for (int i = 0; i < NUM_VOTANTES; i++) {
            int voto = rand() % NUM_CANDIDATOS;
            votos[voto][j]++;
        }
    }
}

// Muestra la tabla de votaciones
void mostrarResultados(int votos[NUM_CANDIDATOS][NUM_RONDAS], string candidatos[NUM_CANDIDATOS]) {
    cout << "\nResultados de las votaciones:\n";
    cout << setw(15) << "Candidato" << " | ";
    for (int j = 0; j < NUM_RONDAS; j++) {
        cout << "Ronda " << j + 1 << " | ";
    }
    cout << "Total\n";
    cout << "------------------------------------------------------\n";

    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        cout << setw(15) << candidatos[i] << " | ";
        int total = 0;
        for (int j = 0; j < NUM_RONDAS; j++) {
            cout << setw(6) << votos[i][j] << " | ";
            total += votos[i][j];
        }
        cout << setw(6) << total << endl;
    }
}

// Calcula el ganador y el candidato con menos votos
void calcularGanador(int votos[NUM_CANDIDATOS][NUM_RONDAS], string candidatos[NUM_CANDIDATOS]) {
    int maxVotos = 0, minVotos = NUM_VOTANTES * NUM_RONDAS;
    string ganador, perdedor;

    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        int total = 0;
        for (int j = 0; j < NUM_RONDAS; j++) {
            total += votos[i][j];
        }
        if (total > maxVotos) {
            maxVotos = total;
            ganador = candidatos[i];
        }
        if (total < minVotos) {
            minVotos = total;
            perdedor = candidatos[i];
        }
    }

    cout << "\nGanador de la elección: " << ganador << " con " << maxVotos << " votos.";
    cout << "\nCandidato con menos votos: " << perdedor << " con " << minVotos << " votos.\n";
}
