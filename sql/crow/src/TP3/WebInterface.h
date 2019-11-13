#ifndef WEBINTERFACE_H
#define WEBINTERFACE_H

#include "BancoTP3.h"
#include "../TP1/Cliente.h"
#include "../TP1/Interface.h"
#include <bits/stdc++.h>

class WebInterface{
private:
  std::vector<BancoTP3*> Bancos;
  static int idBanco;
public:
  WebInterface();
  void CadastrarBanco(std::string nomeBanco);
  std::vector<BancoTP3*> &getBancos();
  Banco* getBanco(int idBanco);


  void CadastrarCliente(BancoTP3* banco, std::string nomeCliente, std::string cpf_cnpj, std::string endereco, std::string fone);
  void ExcluirCliente(BancoTP3* banco, std::string cpf_cnpj);

  void CadastrarConta(BancoTP3* banco, Cliente* cliente);
  void ExcluirConta(BancoTP3* banco, Cliente* cliente, int numConta);

};


#endif
