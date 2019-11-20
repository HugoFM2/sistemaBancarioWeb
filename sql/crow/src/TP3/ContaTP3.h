#ifndef CONTATP3_H
#define CONTATP3_H
#include <iostream>
#include <vector>
#include "ClienteTP3.h"
#include "../TP1/Conta.h"
#include "../TP1/Movimentacao.h"
#include "../TP1/Date.h"



class ContaTP3 : public Conta{
protected:
  ClienteTP3* cliente; //= new Cliente();
  int tipoConta; // 1 - > poupanca , 13  -> Conta Corrente
  double limiteConta;
  // std::vector<Movimentacao> movimentacoes;
public:
  ContaTP3(ClienteTP3* c);
  ~ContaTP3();
  // void DebitarValor(double valor,std::string desc);
  // void CreditarValor(double valor,std::string desc);
  // void DebitarValor(double valor,std::string desc,Date d);
  // void DebitarValorTarifa(double valor,std::string desc,Date d);
  // void CreditarValor(double valor,std::string desc,Date d);
  // std::vector<Movimentacao> &Extrato();
  // std::vector<Movimentacao> ExtratoMensal();
  // std::vector<Movimentacao> Extrato(Date DataInit);
  // std::vector<Movimentacao> Extrato(Date DataInit, Date DataFinal);
  // int getNumConta();
  // double getSaldo();
  // Cliente *getCliente();
  // std::string NomeCliente();
};
#endif
