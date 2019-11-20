#include "ClienteTP3.h"

ClienteTP3::ClienteTP3(std::string n, std::string c, std::string e, std::string f){
  // std::cout << "Construtor chamado" << std::endl;
  this ->setNome(n);
  this ->setCpf_cnpj(c);
  this ->setEndereco(e);
  this ->setFone(f);
  ID++;
  this-> idCliente = ID;
}

int ClienteTP3::getClienteID(){
  return idCliente;
}
