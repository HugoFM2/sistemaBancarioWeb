#ifndef CLIENTETP3_H
#define CLIENTETP3_H

#include <bits/stdc++.h>
#include "../TP1/Cliente.h"

class ClienteTP3 : public Cliente{
private:
  static int ID;
  int idCliente;
public:
  ClienteTP3(std::string n, std::string c, std::string e, std::string f);
  int getBancoid();
  int getClienteID();
};

#endif
