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



void BancoTP3::NovaConta(ClienteTP3* cliente, int tipoConta, double limiteCredito){
    Contas.push_back(new ContaTP3(cliente, tipoConta,limiteCredito));
}

std::vector<ContaTP3*> &BancoTP3::getContas(){
  return Contas;
}

ContaTP3* BancoTP3::getConta(int numConta){
  for(unsigned int i = 0; i < Contas.size() ; ++i){
    if(Contas[i]->getNumConta() == numConta){
      return Contas[i];
    }
  }
}
bool BancoTP3::ExisteConta(int numConta){
  for(unsigned int i = 0; i <  getContas().size();i++ ){
    if(numConta == getContas()[i]->getNumConta()){
      return true;
    }
  }
  return false;
}

bool BancoTP3::ExisteContaCliente(int IDCliente){
  for(unsigned int i = 0; i <  getContas().size();i++ ){
    if(IDCliente == getContas()[i]->getCliente()->getClienteID()){
      return true;
    }
  }
  return false;
}

void BancoTP3::RemoverConta(int numConta){
    for(unsigned int i = 0; i < Contas.size() ; ++i){
        if(Contas[i]->getNumConta() == numConta){
        Contas.erase(Contas.begin()+i);
        }
    }
}

void BancoTP3::TransferirDePara(int contaOrigem,int contaDestino, double valor, Date d){
  std::string DescricaoOrigem = "Transferência PARA conta número "+ std::to_string(contaDestino);
  std::string DescricaoDestino = "Transferência DA conta número " + std::to_string(contaOrigem);
  getConta(contaOrigem)->DebitarValor(valor, DescricaoOrigem, d);
  getConta(contaDestino)->CreditarValor(valor, DescricaoDestino, d);
}
void BancoTP3::TransferirDePara(int contaOrigem,int contaDestino, double valor){
  Date *dataHoje = new Date();
  dataHoje->SetToday();
  std::string DescricaoOrigem = "Transferência PARA conta número "+ std::to_string(contaDestino);
  std::string DescricaoDestino = "Transferência DA conta número " + std::to_string(contaOrigem);
  getConta(contaOrigem)->DebitarValor(valor, DescricaoOrigem, *dataHoje);
  getConta(contaDestino)->CreditarValor(valor, DescricaoDestino, *dataHoje);
}
