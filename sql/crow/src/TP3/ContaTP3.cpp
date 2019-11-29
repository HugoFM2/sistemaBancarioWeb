#include "ContaTP3.h"

ContaTP3::ContaTP3(ClienteTP3* c, int tipo,double lim){
  this->cliente = c;
  this->tipoConta = tipo;
  this->limiteCredito = lim;
  saldo = 0;


}

ClienteTP3 *ContaTP3::getCliente(){
  return cliente;
}

int ContaTP3::getTipoConta(){
  return tipoConta;
}
void ContaTP3::DebitarValor(double valor,std::string desc){
  Date * data1 = new Date();
  data1->SetToday();
  if (saldo - valor >= limiteCredito){
    saldo = saldo - valor;
    movimentacoes.push_back(Movimentacao(*data1,desc,'D', valor));
  }
}

void ContaTP3::DebitarValor(double valor,std::string desc,Date d){
  if (saldo - valor >= limiteCredito){
    saldo = saldo - valor;
    movimentacoes.push_back(Movimentacao(d,desc,'D', valor));
  }
}
