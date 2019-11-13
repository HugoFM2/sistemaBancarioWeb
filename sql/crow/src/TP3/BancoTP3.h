#ifndef BANCOTP3_H
#define BANCOTP3_H

#include <bits/stdc++.h>
#include "../TP1/Banco.h"

class BancoTP3 : public Banco{
private:
  std::string nomeBanco;
  static int ID;
  int idBanco;
public:
  std::string &getNome();
  BancoTP3(std::string nB);
  int getBancoid();
};

#endif
