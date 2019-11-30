#ifndef WEBINTERFACE_H
#define WEBINTERFACE_H

#include "BancoTP3.h"
#include "ClienteTP3.h"
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
  BancoTP3* getBanco(int idBanco);


  void CadastrarCliente(BancoTP3* banco, std::string nomeCliente, std::string cpf_cnpj, std::string endereco, std::string fone);
  void ExcluirCliente(BancoTP3* banco, int idCliente);

  // void CadastrarConta(BancoTP3* banco, ClienteTP3* cliente, int tipo);
  // void ExcluirConta(BancoTP3* banco, ClienteTP3* cliente, int numConta);

};


#endif
