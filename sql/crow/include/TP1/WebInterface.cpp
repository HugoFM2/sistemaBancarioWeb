#include "WebInterface.h"
#include <mysql++.h>

std::vector<Banco*> &WebInterface::getBancos(){
  return Bancos;
}
void WebInterface::CadastrarBanco(std::string nomeBanco){

  mysqlpp::Connection conn(false);
  if (conn.connect("teste", "bd5", "root", "123.456")) {
      std::cout << "ENTROU NA CONEXAO DO PATH" << std::endl;
      mysqlpp::Query query = conn.query();
      query << "INSERT INTO `Banco`" << "(`id`, `Nome`) VALUES ('', '"<< nomeBanco << "');";
      query.execute();
      query.reset();
  }
  Bancos.push_back(new Banco(nomeBanco));
}

void WebInterface::CadastrarCliente(Banco* banco,std::string nomeCliente,std::string cpf_cnpj,std::string endereco,std::string fone){
  banco->NovoCliente(new Cliente(nomeCliente,cpf_cnpj,endereco,fone));
}
void WebInterface::ExcluirCliente(Banco* banco, std::string cpf_cnpj){
  banco->RemoverCliente(cpf_cnpj);
}

void WebInterface::CadastrarConta(Banco* banco, Cliente* cliente){
  banco->NovaConta(cliente);
}
