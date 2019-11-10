#include "WebInterface.h"

void WebInterface::CadastrarCliente(Banco* Banco,std::string nomeCliente,std::string cpf_cnpj,std::string endereco,std::string fone){
  Banco->NovoCliente(new Cliente(nomeCliente,cpf_cnpj,endereco,fone));
}
