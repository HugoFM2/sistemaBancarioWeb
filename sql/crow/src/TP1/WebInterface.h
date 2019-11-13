#ifndef WEBINTERFACE_H
#define WEBINTERFACE_H

#include "Banco.h"
#include "Cliente.h"
#include "Interface.h"
#include <bits/stdc++.h>

class WebInterface{
private:
  std::vector<Banco*> Bancos;
    static int contador;
public:
  WebInterface();
  void CadastrarBanco(std::string nomeBanco);
  std::vector<Banco*> &getBancos();


  void CadastrarCliente(Banco* banco, std::string nomeCliente, std::string cpf_cnpj, std::string endereco, std::string fone);
  void ExcluirCliente(Banco* banco, std::string cpf_cnpj);

  void CadastrarConta(Banco* banco, Cliente* cliente);
  void ExcluirConta(Banco* banco, Cliente* cliente, int numConta);

};


#endif
