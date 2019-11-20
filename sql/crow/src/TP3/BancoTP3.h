#ifndef BANCOTP3_H
#define BANCOTP3_H

#include <bits/stdc++.h>
#include "../TP1/Banco.h"
#include "ClienteTP3.h"

class BancoTP3 : public Banco{
private:
  std::vector<ClienteTP3*> Clientes;
  std::string nomeBanco;
  static int ID;
  int idBanco;
public:
  std::string &getNome();
  BancoTP3(std::string nB);
  int getBancoid();
  void NovoCliente(ClienteTP3* cliente);
  std::vector<ClienteTP3*> &getClientes();

};

#endif
