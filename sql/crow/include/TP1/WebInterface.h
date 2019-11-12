#include "Banco.h"
#include "Cliente.h"
#include "Interface.h"
#include <bits/stdc++.h>

class WebInterface : public Interface{
private:
  std::vector<Banco*> Bancos;
public:
  void CadastrarBanco(std::string nomeBanco, Banco* banco);
  std::vector<Banco*> &getBancos();


  void CadastrarCliente(Banco* banco, std::string nomeCliente, std::string cpf_cnpj, std::string endereco, std::string fone);
  void ExcluirCliente(Banco* banco, std::string cpf_cnpj);

  void CadastrarConta(Banco* banco, Cliente* cliente);
  void ExcluirConta(Banco* banco, Cliente* cliente, int numConta);

};
