#include "ContaTP3.h"

ContaTP3::ContaTP3(ClienteTP3* c){
  this->cliente = c;
  saldo = 0;
  counter++;
  this->numConta = counter;

}
