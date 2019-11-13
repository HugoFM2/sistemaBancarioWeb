#ifndef INTERFACE_H
#define INTERFACE_H
#include <iostream>
#include "Banco.h"

class Interface{
private:
  Banco* Banco1;
  static int counter;
  Date * DataHoje = new Date();

public:
  Interface(Banco *b);
  ~Interface();
  virtual void Menu();
  virtual void CadastrarCliente();
  virtual void MostrarClientes();
  virtual void MostrarContas();
  virtual void CadastrarConta();
  virtual void ExcluirCliente();
  virtual void ExcluirConta();
  virtual void EfetuarDeposito();
  virtual void EfetuarSaque();
  virtual void EfetuarTransferencia();
  virtual void CobrarTarifa();
  virtual void CobrarCPMF();
  virtual void MostrarSaldo();
  virtual void ObterExtratoMensal();
  virtual void ObterExtratoInicial();
  virtual void ObterExtratoRange();
};
#endif
