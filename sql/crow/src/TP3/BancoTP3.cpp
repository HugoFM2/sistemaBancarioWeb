#include "BancoTP3.h"

BancoTP3::BancoTP3(std::string nB){
  this-> nomeBanco = nB;
  idBanco++;
}

int BancoTP3::getBancoid(){
  return idBanco;
}
