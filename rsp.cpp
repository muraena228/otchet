#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

// Функция правил игры
int rule(char p, char c) {
    if (p == c) {
        return 0; // Ничья
    }
    
    if (p == 'r' && c == 'p') return -1;  // Камень проигрывает бумаге
    if (p == 'r' && c == 's') return 1;   // Камень выигрывает у ножниц
    if (p == 'p' && c == 'r') return 1;   // Бумага выигрывает у камня
    if (p == 'p' && c == 's') return -1;  // Бумага проигрывает ножницам
    if (p == 's' && c == 'p') return 1;   // Ножницы выигрывают у бумаги
    if (p == 's' && c == 'r') return -1;  // Ножницы проигрывают камню
    
    return 0; // На случай ошибки
}

int main() {
    char computer;
    char player;
    char playmore;
    
    cout << "\t\t\t\t";
    for(int i = 0; i < 50; i++) {
        cout << "-";
    }
    cout << endl;
    
    cout << "\t\t\t\t";
    cout << "\t Welcome to Rock, Paper and Scissors Game" << endl;
    
    cout << "\t\t\t\t";
    for(int i = 0; i < 50; i++) {
        cout << "-";
    }
    cout << endl;
    
    cout << "\t\t\t\t";
    cout << "\t Note: " << endl;
    cout << "\t\t\t\t";
    cout << "\t\t r : Rock" << endl;
    cout << "\t\t\t\t" << "\t\t p : Paper" << endl;
    cout << "\t\t\t\t" << "\t\t s : Scissors" << endl;
    cout << "\t\t\t\t" << endl << endl;
    
    cout << "\t\t\t\t";
    for(int i = 0; i < 50; i++) {
        cout << "-";
    }
    cout << endl;
    
    do {
        int number = 0;
        srand(time(0));
        number = rand() % 100;
        
        if (number < 33) {
            computer = 'r';
        } else if (number > 66) {
            computer = 's';
        } else {
            computer = 'p';
        }
        
        cout << "\t\t\t\t";
        cout << "Enter your choice (r/p/s): ";
        cin >> player;
        
        player = tolower(player); // Игнорируем регистр
        
        int result = rule(player, computer);
        
        if(result == 1) {
            cout << "\t\t\t\t";
            cout << "You won! Hurray" << endl;
        } else if(result == -1) {
            cout << "\t\t\t\t";
            cout << "You lose! Bad Luck" << endl;
        } else {
            cout << "\t\t\t\t";
            cout << "Woah! That's Tie!" << endl;
        }
        
        cout << "\t\t\t\t";
        cout << "Do you want to Play Again?" << endl;
        cout << "\t\t\t\t";
        cout << "Note: Press 'n' to exit! Press Anything to continue: ";
        cin >> playmore;
        
        cout << "\t\t\t\t";
        for(int i = 0; i < 50; i++) {
            cout << "-";
        }
        cout << endl;
        
    } while(playmore != 'n');
    
    return 0;
}