#include "WebInterface.h"
#include <mysql++.h>


WebInterface::WebInterface(){
}



void WebInterface::CadastrarBanco(std::string nomeBanco){
  mysqlpp::Connection conn(false);
  if (conn.connect("teste", "bd5", "root", "123.456")) {
      Bancos.push_back(new BancoTP3(nomeBanco));
      mysqlpp::Query query = conn.query();
      query << "INSERT INTO `Banco`" << "(`id`, `Nome`) VALUES ('" <<  Bancos.back()->getBancoid() << "', '"<< nomeBanco << "');";
      query.execute();
      query.reset();
  }
  std::cout << "BANCO CRIADO" << std::endl << std::endl;

}

std::vector<BancoTP3*> &WebInterface::getBancos(){
return Bancos;
}



BancoTP3* WebInterface::getBanco(int idBank){
  for(int i = 0; i < Bancos.size();i++){
    if(idBank == getBancos()[i]->getBancoid()){
      return Bancos[i];
    }
  }
}

void WebInterface::CadastrarCliente(BancoTP3* banco,std::string nomeCliente,std::string cpf_cnpj,std::string endereco,std::string fone){
  banco->NovoCliente(new ClienteTP3(nomeCliente,cpf_cnpj,endereco,fone));
  std::cout << "Cliente CRIADO" << std::endl << std::endl;
}
void WebInterface::ExcluirCliente(BancoTP3* banco, int idCliente){
  banco->RemoverCliente(idCliente);
}

void WebInterface::CadastrarConta(BancoTP3* banco, ClienteTP3* cliente, int tipo){
  banco->NovaConta(cliente, tipo);
}
