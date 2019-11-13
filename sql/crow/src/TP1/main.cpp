#include <bits/stdc++.h>
#include <ctime>
#include <vector>

#include "Banco.h"
#include "WebInterface.h"
#include "Date.h"


using namespace std;


int Conta::counter = 0; // inicializa valor static
int Interface::counter = 0; // inicializa valor static

int main() {
  WebInterface * teste = new WebInterface();
  WebInterface->CadastrarBanco("Bradesco");
  teste->Menu();
  return 0;
}
