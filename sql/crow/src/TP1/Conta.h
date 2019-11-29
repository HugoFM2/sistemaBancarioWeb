#ifndef CONTA_H
#define CONTA_H
#include <iostream>
#include <vector>
#include "Cliente.h"
#include "Movimentacao.h"
#include "Date.h"



class Conta{
protected:
  static int counter;
  int numConta; //OBS STATIC???
  double saldo;
  Cliente* cliente; //= new Cliente();
  std::vector<Movimentacao> movimentacoes;
  static int proxNumConta;
public:
  Conta();
  Conta(Cliente* c);
  Conta(Cliente* c,int nC);
  ~Conta();
  virtual void DebitarValor(double valor,std::string desc);
  virtual void CreditarValor(double valor,std::string desc);
  virtual void DebitarValor(double valor,std::string desc,Date d);
  virtual void DebitarValorTarifa(double valor,std::string desc,Date d);
  virtual void CreditarValor(double valor,std::string desc,Date d);
  std::vector<Movimentacao> &Extrato();
  std::vector<Movimentacao> ExtratoMensal();
  std::vector<Movimentacao> Extrato(Date DataInit);
  std::vector<Movimentacao> Extrato(Date DataInit, Date DataFinal);
  void setNumConta(int nC);
  int getNumConta();
  double getSaldo();
  Cliente *getCliente();
  std::string NomeCliente();
};
#endif
