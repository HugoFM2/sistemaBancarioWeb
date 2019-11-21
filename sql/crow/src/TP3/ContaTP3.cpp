#include "ContaTP3.h"

ContaTP3::ContaTP3(ClienteTP3* c){
  this->cliente = c;
  saldo = 0;
  counter++;
  this->numConta = counter; // uma vez que chama o construtor da clase Base, comeca ja em 1


}

ClienteTP3 *ContaTP3::getCliente(){
  return cliente;
}
