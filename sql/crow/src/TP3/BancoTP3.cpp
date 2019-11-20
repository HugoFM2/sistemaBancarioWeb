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

void BancoTP3::RemoverCliente(int idCliente){ // BUG: Caso nao ache, vai retornar 0, resolucao, comecar NumCliente com -1, se for -1 cliente nao foi achado pelo cpf e nao apaga
  for(int i = 0; Clientes.size() ; i++){
    if(Clientes[i]->getClienteID() == idCliente){
      Clientes.erase(Clientes.begin()+idCliente);
    }
  }
}

std::vector<ClienteTP3*> &BancoTP3::getClientes(){
  return Clientes;
}



// void BancoTP3::NovaConta(ClienteTP3* cliente){
//   if(getContas().size() == 0){
//     Contas.push_back(new ContaTP3(cliente,1));
//   } else {
//     Contas.push_back(new ContaTP3(cliente,getContas().back()->getNumConta() + 1));
//   }
// }
