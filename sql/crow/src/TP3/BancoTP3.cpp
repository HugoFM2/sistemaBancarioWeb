#include "BancoTP3.h"

BancoTP3::BancoTP3(std::string nB){
  this-> nomeBanco = nB;
  ID++;
  this-> idBanco = ID;
}

int BancoTP3::getBancoid(){
  return idBanco;
}

std::string &BancoTP3::getNome(){
  return nomeBanco;
}

void BancoTP3::NovoCliente(ClienteTP3* cliente){
  Clientes.push_back(cliente);
}
std::vector<ClienteTP3*> &BancoTP3::getClientes(){
  return Clientes;
}
