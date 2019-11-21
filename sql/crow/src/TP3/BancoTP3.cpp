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
ClienteTP3* BancoTP3::getCliente(int idCliente){
  for(unsigned int i = 0; i < Clientes.size() ; ++i){
    if(Clientes[i]->getClienteID() == idCliente){
      return Clientes[i];
    }
  }
}

void BancoTP3::RemoverCliente(int idCliente){
  for(unsigned int i = 0; i < Clientes.size() ; ++i){
    if(Clientes[i]->getClienteID() == idCliente){
      Clientes.erase(Clientes.begin()+i);
    }
  }
}

std::vector<ClienteTP3*> &BancoTP3::getClientes(){
  return Clientes;
}



void BancoTP3::NovaConta(ClienteTP3* cliente){
    Contas.push_back(new ContaTP3(cliente));
}

std::vector<ContaTP3*> &BancoTP3::getContas(){
  return Contas;
}
