#include "crow.h"
#include "stock.h"
#include "TP3/WebInterface.h"

#include <sstream>
#include <mysql++.h>
#include <limits>
// #include <mysql.h>

// using namespace mysqlpp;

int BancoTP3::ID = -1; // inicializa valor static
int ClienteTP3::ID = 0; // inicializa valor static
int Conta::counter = 0; // inicializa valor static
class ExampleLogHandler : public crow::ILogHandler {
    public:
        void log(std::string /*message*/, crow::LogLevel /*level*/) override {
//            cerr << "ExampleLogHandler -> " << message;
        }
};

struct ExampleMiddleware
{
    std::string message;

    ExampleMiddleware()
    {
        message = "foo";
    }

    void setMessage(std::string newMsg)
    {
        message = newMsg;
    }

    struct context
    {
    };

    void before_handle(crow::request& /*req*/, crow::response& /*res*/, context& /*ctx*/)
    {
        CROW_LOG_DEBUG << " - MESSAGE: " << message;
    }

    void after_handle(crow::request& /*req*/, crow::response& /*res*/, context& /*ctx*/)
    {
        // no-op
    }
};

int main()
{
    crow::App<ExampleMiddleware> app;
    WebInterface WebTeste;

    app.get_middleware<ExampleMiddleware>().setMessage("hello");

    // Connection conn(false);
    // conn.connect("teste", "bd5", "root", "123.456");

    CROW_ROUTE(app, "/about")
    ([](){
        std::cout << "asdas" << std::endl;
        crow::json::wvalue x;




        // Connection conn(false);
        // conn.connect("teste", "bd5", "root", "123.456");

        mysqlpp::Connection conn(false);
        if (conn.connect("teste", "bd5", "root", "123.456")) {
            // Retrieve a subset of the sample stock table set up by resetdb
            // and display it.
            mysqlpp::Query query = conn.query("SELECT * FROM `clientes`");
            if (mysqlpp::StoreQueryResult res = query.store()) {
                std::cout << "We have:" << std::endl;
                mysqlpp::StoreQueryResult::const_iterator it;
                int linha = 0;
                for (it = res.begin(); it != res.end(); ++it) {
                    mysqlpp::Row row = *it;
                    x["dados"][linha] = std::string(row[1]);
                    std::cout << '\t' << row[1] << std::endl;
                    linha++;

                }
            }
        }

        return x;
    });

    // a request to /path should be forwarded to /path/
    CROW_ROUTE(app, "/path/")
    ([](){

        mysqlpp::Connection conn(false);
        if (conn.connect("teste", "bd5", "root", "123.456")) {
            std::cout << "ENTROU NA CONEXAO DO PATH" << std::endl;
            mysqlpp::Query query = conn.query();
            query << "INSERT INTO `stock`" << "(`id`, `Teste`) VALUES ('', 'InitTeste');";
            query.execute();
            query.reset();
        }

        return "Path2";
    });
// BANCO
  WebTeste.CadastrarBanco("Caixa"); // NO TP3 SÓ TEM UM BANCO
    // CROW_ROUTE(app, "/criarBanco")
    // ([&WebTeste](const crow::request& req){
    //
    //
    //     if(req.url_params.get("nomeBanco") != nullptr) {
    //       std::string nomeBanco = std::string(req.url_params.get("nomeBanco"));
    //         // std::cout << "The value of 'nomeBanco' is " << nomeBanco << std::endl;
    //         WebTeste.CadastrarBanco(nomeBanco);
    //     }
    //     return "";
    // });

    // CROW_ROUTE(app, "/listarBancos")
    // ([&WebTeste](const crow::request& req){
    //   crow::json::wvalue x;
    //   for(int i = 0;i < WebTeste.getBancos().size(); i++){
    //     std::cout << i << ". " << WebTeste.getBancos()[i]->getNome() << ",  " << WebTeste.getBancos()[i]->getBancoid() << std::endl;
    //     x["Nome"][i] = WebTeste.getBancos()[i]->getNome();
    //     x["id"][i] = WebTeste.getBancos()[i]->getBancoid();
    //   }
    //     return x;
    // });

// CLIENTE
  CROW_ROUTE(app, "/criarCliente")
  ([&WebTeste](const crow::request& req){

      if(req.url_params.get("idBanco") != nullptr) {
        int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
        std::cout << "ACHOU id banco" << std::endl;
        if (req.url_params.get("nomeCliente") != nullptr) {
          std::cout << "ACHOU nomecliente" << std::endl;
          std::string nomeCliente = std::string(req.url_params.get("nomeCliente"));
          if (req.url_params.get("cpf_cnpj") != nullptr){
            std::cout << "cpf_cnpj" << std::endl;
            std::string cpf_cnpj = std::string(req.url_params.get("cpf_cnpj"));
            if (req.url_params.get("endereco") != nullptr){
              std::cout << "ACHOU endereco" << std::endl;
              std::string endereco = std::string(req.url_params.get("endereco"));
              if (req.url_params.get("fone") != nullptr){
                std::string fone = std::string(req.url_params.get("fone"));
                WebTeste.CadastrarCliente(WebTeste.getBanco(idBanco), nomeCliente, cpf_cnpj, endereco, fone);
              }
            }
          }
        }
      }
      return "";
  });
  CROW_ROUTE(app, "/removerCliente")
  ([&WebTeste](const crow::request& req){
      if(req.url_params.get("idBanco") != nullptr) {
        int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
        if(req.url_params.get("idCliente") != nullptr) {
          int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
          std::cout << std::endl << std:: endl << "ID CLIENTE É: " << idCliente;
          WebTeste.getBanco(idBanco)->RemoverCliente(idCliente);
        }
        return "Faltou ID Cliente";
      }
      return "Faltou ID Banco";
  });

  CROW_ROUTE(app, "/listarClientes")
  ([&WebTeste](const crow::request& req){
    crow::json::wvalue x;
    if(req.url_params.get("idBanco") != nullptr) {
      std::cout << " Entrou listarClientes com algum id ";
      int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
      for(int i = 0;i < WebTeste.getBanco(idBanco)->getClientes().size(); i++){
        std::cout << i << ". " << WebTeste.getBanco(idBanco)->getClientes()[i]->getNome() << std::endl;
        x["Nome"][i] = WebTeste.getBanco(idBanco)->getClientes()[i]->getNome();
        x["cpf_cnpj"][i] = WebTeste.getBanco(idBanco)->getClientes()[i]->getCpf_cnpj();
        x["endereco"][i] = WebTeste.getBanco(idBanco)->getClientes()[i]->getEndereco();
        x["fone"][i] = WebTeste.getBanco(idBanco)->getClientes()[i]->getFone();
        x["id"][i] = WebTeste.getBanco(idBanco)->getClientes()[i]->getClienteID();
      }
  }
      return x;
  });

  // Contas

  CROW_ROUTE(app, "/criarConta")
  ([&WebTeste](const crow::request& req){
      if((req.url_params.get("idBanco") != nullptr) && (std::string(req.url_params.get("idBanco")) != "")  && (std::string(req.url_params.get("idBanco")) != "undefined")) {
        int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
        if((req.url_params.get("idCliente") != nullptr) && (std::string(req.url_params.get("idCliente")) != "")  && (std::string(req.url_params.get("idCliente")) != "undefined"))  {
          int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
          if((req.url_params.get("tipoConta") != nullptr) && (std::string(req.url_params.get("tipoConta")) != "undefined") && (std::string(req.url_params.get("tipoConta")) != "")) {
            int tipoConta = std::stoi(std::string(req.url_params.get("tipoConta")));
            double limiteCredito = 0.0;
            if((req.url_params.get("limiteCredito") != nullptr) && (std::string(req.url_params.get("limiteCredito")) != "undefined") && (std::string(req.url_params.get("limiteCredito")) != "")) {
              limiteCredito = std::stod(std::string(req.url_params.get("limiteCredito")));
            }
            WebTeste.getBanco(idBanco)->NovaConta(WebTeste.getBanco(idBanco)->getCliente(idCliente), tipoConta,limiteCredito);
            return "Conta Criada"; // caso nao especifique limitecredito, o mesmo vai para 0
          }
          return "Faltou Tipo da Conta";
        }
        return "Faltou Selecionar Cliente";
      }
      return "Faltou ID Banco";
  });

  CROW_ROUTE(app, "/listarContasCliente")
  ([&WebTeste](const crow::request& req){
    crow::json::wvalue x;
    if(req.url_params.get("idBanco") != nullptr) {
      std::cout << " Entrou listarClientes com algum id ";
      int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
      if(req.url_params.get("idCliente") != nullptr) {
        int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
        for(unsigned int i = 0; i < WebTeste.getBanco(idBanco)->getContas().size(); i++){
          if(WebTeste.getBanco(idBanco)->getContas()[i]->getCliente()->getClienteID() == idCliente){
            x["numConta"][i] = WebTeste.getBanco(idBanco)->getContas()[i]->getNumConta();
            x["tipoConta"][i] = WebTeste.getBanco(idBanco)->getContas()[i]->getTipoConta();
          }

      }
    }
  }
      return x;
  });

  //DADOS Conta INDIVIDUAL
  CROW_ROUTE(app, "/dadosConta")
  ([&WebTeste](const crow::request& req){
    crow::json::wvalue x;
      if((req.url_params.get("idBanco") != nullptr) && (std::string(req.url_params.get("idBanco")) != "")  && (std::string(req.url_params.get("idBanco")) != "undefined")) {
        int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
        if((req.url_params.get("idCliente") != nullptr) && (std::string(req.url_params.get("idCliente")) != "")  && (std::string(req.url_params.get("idCliente")) != "undefined"))  {
          int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
          if((req.url_params.get("numConta") != nullptr) && (std::string(req.url_params.get("numConta")) != "undefined") && (std::string(req.url_params.get("numConta")) != "")) {
            int numConta = std::stoi(std::string(req.url_params.get("numConta")));
            x["saldo"] = WebTeste.getBanco(idBanco)->getConta(numConta)->getSaldo();
            x["tipoConta"] = WebTeste.getBanco(idBanco)->getConta(numConta)->getTipoConta();
            x["limiteConta"] = WebTeste.getBanco(idBanco)->getConta(numConta)->getLimiteConta();
            return x;
          }
          // return "Faltou num da Conta";
        }
        // return "Faltou Selecionar Cliente";
      }
      // return "Faltou ID Banco";
  });
  CROW_ROUTE(app, "/debitarValorConta")
  ([&WebTeste](const crow::request& req){
      if((req.url_params.get("idBanco") != nullptr) && (std::string(req.url_params.get("idBanco")) != "")  && (std::string(req.url_params.get("idBanco")) != "undefined")) {
        int idBanco = 0;
        if((req.url_params.get("idCliente") != nullptr) && (std::string(req.url_params.get("idCliente")) != "")  && (std::string(req.url_params.get("idCliente")) != "undefined"))  {
          int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
          if((req.url_params.get("numConta") != nullptr) && (std::string(req.url_params.get("numConta")) != "undefined") && (std::string(req.url_params.get("numConta")) != "")) {
            int numConta = std::stoi(std::string(req.url_params.get("numConta")));
              if((req.url_params.get("valor") != nullptr) && (std::string(req.url_params.get("valor")) != "undefined") && (std::string(req.url_params.get("valor")) != "")) {
                double valor = std::stod(std::string(req.url_params.get("valor")));
                std::string desc = "";
                  if((req.url_params.get("desc") != nullptr) && (std::string(req.url_params.get("desc")) != "undefined")) {
                    desc = std::string(req.url_params.get("desc"));
                  }
                  if(WebTeste.getBanco(idBanco)->getConta(numConta)->getSaldo() + WebTeste.getBanco(idBanco)->getConta(numConta)->getLimiteConta()  >= valor){
                    if((req.url_params.get("dia") != nullptr) && (std::string(req.url_params.get("dia")) != "undefined") && (std::string(req.url_params.get("dia")) != "")) {
                      int dia = std::stoi(std::string(req.url_params.get("dia")));
                      if((req.url_params.get("mes") != nullptr) && (std::string(req.url_params.get("mes")) != "undefined") && (std::string(req.url_params.get("mes")) != "")) {
                        int mes = std::stoi(std::string(req.url_params.get("mes")));
                        if((req.url_params.get("ano") != nullptr) && (std::string(req.url_params.get("ano")) != "undefined") && (std::string(req.url_params.get("ano")) != "")) {
                          int ano = std::stoi(std::string(req.url_params.get("ano")));

                          if (mes <= 12 && mes > 0){
                            if ( (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12 ) && (dia <= 31)){
                              Date DataInput(dia,mes,ano);
                              WebTeste.getBanco(idBanco)->getConta(numConta)->DebitarValor(valor,desc,DataInput);
                              return "Valor Debitado com a data especificada";
                            }
                            else if ( (mes == 4 || mes == 6 || mes == 9 || mes == 11) && (dia <= 30) ) {
                              Date DataInput(dia,mes,ano);
                              WebTeste.getBanco(idBanco)->getConta(numConta)->DebitarValor(valor,desc,DataInput);
                              return "Valor Debitado com a data especificada";
                            }
                            else if ( (mes == 2) && (dia <= 28) ){
                              Date DataInput(dia,mes,ano);
                              WebTeste.getBanco(idBanco)->getConta(numConta)->DebitarValor(valor,desc,DataInput);
                              return "Valor Debitado com a data especificada";
                            }
                            else {
                              return "Data invalida";
                            }
                          }
                        }
                      }
                    }
                    WebTeste.getBanco(idBanco)->getConta(numConta)->CreditarValor(valor,desc);
                    return "Valor Debitado com o dia de hoje"; // tira da conta
                  }
                  return "Saldo insuficiente para Debitar";

              }
              return "Faltou Valor a ser Debitado";
          }
          return "Faltou num da Conta";
        }
        return "Faltou Selecionar Cliente";
      }
      return "Faltou ID Banco";
  });

  CROW_ROUTE(app, "/creditarValorConta")
  ([&WebTeste](const crow::request& req){
      if((req.url_params.get("idBanco") != nullptr) && (std::string(req.url_params.get("idBanco")) != "")  && (std::string(req.url_params.get("idBanco")) != "undefined")) {
        int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
        if((req.url_params.get("idCliente") != nullptr) && (std::string(req.url_params.get("idCliente")) != "")  && (std::string(req.url_params.get("idCliente")) != "undefined"))  {
          int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
          if((req.url_params.get("numConta") != nullptr) && (std::string(req.url_params.get("numConta")) != "undefined") && (std::string(req.url_params.get("numConta")) != "")) {
            int numConta = std::stoi(std::string(req.url_params.get("numConta")));
              if((req.url_params.get("valor") != nullptr) && (std::string(req.url_params.get("valor")) != "undefined") && (std::string(req.url_params.get("valor")) != "")) {
                double valor = std::stod(std::string(req.url_params.get("valor")));
                std::string desc = "";
                  if((req.url_params.get("desc") != nullptr) && (std::string(req.url_params.get("desc")) != "undefined")) {
                    desc = std::string(req.url_params.get("desc"));
                  }
                  if((req.url_params.get("dia") != nullptr) && (std::string(req.url_params.get("dia")) != "undefined") && (std::string(req.url_params.get("dia")) != "")) {
                    int dia = std::stoi(std::string(req.url_params.get("dia")));
                    if((req.url_params.get("mes") != nullptr) && (std::string(req.url_params.get("mes")) != "undefined") && (std::string(req.url_params.get("mes")) != "")) {
                      int mes = std::stoi(std::string(req.url_params.get("mes")));
                      if((req.url_params.get("ano") != nullptr) && (std::string(req.url_params.get("ano")) != "undefined") && (std::string(req.url_params.get("ano")) != "")) {
                        int ano = std::stoi(std::string(req.url_params.get("ano")));
                        if (mes <= 12 && mes > 0){
                          if ( (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12 ) && (dia <= 31)){
                            Date DataInput(dia,mes,ano);
                            WebTeste.getBanco(idBanco)->getConta(numConta)->CreditarValor(valor,desc, DataInput);
                            return "Valor Creditado com a data especificada";
                          }
                          else if ( (mes == 4 || mes == 6 || mes == 9 || mes == 11) && (dia <= 30) ) {
                            Date DataInput(dia,mes,ano);
                            WebTeste.getBanco(idBanco)->getConta(numConta)->CreditarValor(valor,desc, DataInput);
                            return "Valor Creditado com a data especificada";
                          }
                          else if ( (mes == 2) && (dia <= 28) ){
                            Date DataInput(dia,mes,ano);
                            WebTeste.getBanco(idBanco)->getConta(numConta)->CreditarValor(valor,desc, DataInput);
                            return "Valor Creditado com a data especificada";
                          }
                          else {
                            return "Data invalida";
                          }
                        }
                      }
                    }
                  }
                  WebTeste.getBanco(idBanco)->getConta(numConta)->CreditarValor(valor,desc);
                  return "Valor Creditado com o dia de hoje"; // acrescentado a conta
              }
              return "Faltou Valor a ser creditado";
          }
          return "Faltou num da Conta";
        }
        return "Faltou Selecionar Cliente";
      }
      return "Faltou ID Banco";
  });



  CROW_ROUTE(app, "/movimentacoesConta")
  ([&WebTeste](const crow::request& req){
    crow::json::wvalue x;
      if((req.url_params.get("idBanco") != nullptr) && (std::string(req.url_params.get("idBanco")) != "")  && (std::string(req.url_params.get("idBanco")) != "undefined")) {
        int idBanco = std::stoi(std::string(req.url_params.get("idBanco")));
        if((req.url_params.get("idCliente") != nullptr) && (std::string(req.url_params.get("idCliente")) != "")  && (std::string(req.url_params.get("idCliente")) != "undefined"))  {
          int idCliente = std::stoi(std::string(req.url_params.get("idCliente")));
          if((req.url_params.get("numConta") != nullptr) && (std::string(req.url_params.get("numConta")) != "undefined") && (std::string(req.url_params.get("numConta")) != "")) {
            int numConta = std::stoi(std::string(req.url_params.get("numConta")));
            for(unsigned int i = 0; i < WebTeste.getBanco(idBanco)->getConta(numConta)->Extrato().size(); i++){
              x["data"][i] = WebTeste.getBanco(idBanco)->getConta(numConta)->Extrato()[i].getDate().StringData();
              x["valor"][i] = WebTeste.getBanco(idBanco)->getConta(numConta)->Extrato()[i].getValor();
              x["tipo"][i] = std::string(1,WebTeste.getBanco(idBanco)->getConta(numConta)->Extrato()[i].getDebitoCredito());
              x["desc"][i] = WebTeste.getBanco(idBanco)->getConta(numConta)->Extrato()[i].getDescricao();

              }
            return x;
          }
          // return "Faltou num da Conta";
        }
        // return "Faltou Selecionar Cliente";
      }
      // return "Faltou ID Banco";
  });
  CROW_ROUTE(app, "/TransferirValorConta")
  ([&WebTeste](const crow::request& req){
          if((req.url_params.get("numContaOrigem") != nullptr) && (std::string(req.url_params.get("numContaOrigem")) != "undefined") && (std::string(req.url_params.get("numContaOrigem")) != "")) {
            int numContaOrigem = std::stoi(std::string(req.url_params.get("numContaOrigem")));
            if(WebTeste.getBanco(0)->ExisteConta(numContaOrigem)){
              if((req.url_params.get("numContaDestino") != nullptr) && (std::string(req.url_params.get("numContaDestino")) != "undefined") && (std::string(req.url_params.get("numContaDestino")) != "")) {
                int numContaDestino = std::stoi(std::string(req.url_params.get("numContaDestino")));
                if(WebTeste.getBanco(0)->ExisteConta(numContaDestino)){
                  if((req.url_params.get("valor") != nullptr) && (std::string(req.url_params.get("valor")) != "undefined") && (std::string(req.url_params.get("valor")) != "")) {
                    double valor = std::stod(std::string(req.url_params.get("valor")));
                    if((req.url_params.get("dia") != nullptr) && (std::string(req.url_params.get("dia")) != "undefined") && (std::string(req.url_params.get("dia")) != "")) {
                      int dia = std::stoi(std::string(req.url_params.get("dia")));
                      if((req.url_params.get("mes") != nullptr) && (std::string(req.url_params.get("mes")) != "undefined") && (std::string(req.url_params.get("mes")) != "")) {
                        int mes = std::stoi(std::string(req.url_params.get("mes")));
                        if((req.url_params.get("ano") != nullptr) && (std::string(req.url_params.get("ano")) != "undefined") && (std::string(req.url_params.get("ano")) != "")) {
                          int ano = std::stoi(std::string(req.url_params.get("ano")));
                          std::string desc = "";
                          if(WebTeste.getBanco(0)->getConta(numContaOrigem)->getSaldo() + WebTeste.getBanco(0)->getConta(numContaOrigem)->getLimiteConta()  >= valor){
                            if((req.url_params.get("desc") != nullptr) && (std::string(req.url_params.get("desc")) != "undefined")) {
                              desc = std::string(req.url_params.get("desc"));
                            }
                            Date DataInput(dia,mes,ano);
                            if(DataInput.DataValida()){
                              WebTeste.getBanco(0)->TransferirDePara(numContaOrigem,numContaDestino,valor,DataInput);
                              return "Valor Creditado com a data especificada"; //acrescentado a conta
                            } else{
                              return "Data Invalida";
                            }
                          }
                          return "Saldo insuficiente";
                        }
                        return "Ano não especificado";
                      }
                      return "Mês não especificado";
                    }
                    WebTeste.getBanco(0)->TransferirDePara(numContaOrigem,numContaDestino,valor);
                    return "Valor Creditado com a data de hoje";
                  }
                  return "Faltou Valor a ser creditado";
                }
                return "Conta Destino Invalida";
              }
              return "Faltou num da conta Destino";
            }
            return "Conta Origem invalida";
          }
          return "Faltou num da conta Origem";


  });

    // simple json response
    // To see it in action enter {ip}:18080/json
    CROW_ROUTE(app, "/json")
    ([]{
        crow::json::wvalue x;
        x["message"] = "Hello, World!";
        return x;
    });

    // To see it in action enter {ip}:18080/hello/{integer_between -2^32 and 100} and you should receive
    // {integer_between -2^31 and 100} bottles of beer!
    CROW_ROUTE(app,"/hello/<int>")
    ([](int count){
        if (count > 100)
            return crow::response(400);
        std::ostringstream os;
        os << count << " bottles of beer!";
        return crow::response(os.str());
    });

    // To see it in action submit {ip}:18080/add/1/2 and you should receive 3 (exciting, isn't it)
    CROW_ROUTE(app,"/add/<int>/<int>")
    ([](const crow::request& /*req*/, crow::response& res, int a, int b){
        std::ostringstream os;
        os << a+b;
        res.write(os.str());
        res.end();
    });

    // Compile error with message "Handler type is mismatched with URL paramters"
    //CROW_ROUTE(app,"/another/<int>")
    //([](int a, int b){
        //return crow::response(500);
    //});

    // more json example

    // To see it in action, I recommend to use the Postman Chrome extension:
    //      * Set the address to {ip}:18080/add_json
    //      * Set the method to post
    //      * Select 'raw' and then JSON
    //      * Add {"a": 1, "b": 1}
    //      * Send and you should receive 2

    // A simpler way for json example:
    //      * curl -d '{"a":1,"b":2}' {ip}:18080/add_json
    CROW_ROUTE(app, "/add_json")
        .methods("POST"_method)
    ([](const crow::request& req){
        auto x = crow::json::load(req.body);
        if (!x)
            return crow::response(400);
        int sum = x["a"].i()+x["b"].i();
        std::ostringstream os;
        os << sum;
        return crow::response{os.str()};
    });

    // Example of a request taking URL parameters
    // If you want to activate all the functions just query
    // {ip}:18080/params?foo='blabla'&pew=32&count[]=a&count[]=b
    CROW_ROUTE(app, "/params")
    ([](const crow::request& req){
        std::ostringstream os;

        // To get a simple string from the url params
        // To see it in action /params?foo='blabla'
        os << "Params: " << req.url_params << "\n\n";
        os << "The key 'foo' was " << (req.url_params.get("foo") == nullptr ? "not " : "") << "found.\n";

        // To get a double from the request
        // To see in action submit something like '/params?pew=42'
        if(req.url_params.get("pew") != nullptr) {
            double countD = boost::lexical_cast<double>(req.url_params.get("pew"));
            os << "The value of 'pew' is " <<  countD << '\n';
        }

        // To get a list from the request
        // You have to submit something like '/params?count[]=a&count[]=b' to have a list with two values (a and b)
        auto count = req.url_params.get_list("count");
        os << "The key 'count' contains " << count.size() << " value(s).\n";
        for(const auto& countVal : count) {
            os << " - " << countVal << '\n';
        }

        // To get a dictionary from the request
        // You have to submit something like '/params?mydict[a]=b&mydict[abcd]=42' to have a list of pairs ((a, b) and (abcd, 42))
        auto mydict = req.url_params.get_dict("mydict");
        os << "The key 'dict' contains " << mydict.size() << " value(s).\n";
        for(const auto& mydictVal : mydict) {
            os << " - " << mydictVal.first << " -> " << mydictVal.second << '\n';
        }

        return crow::response{os.str()};
    });

    CROW_ROUTE(app, "/large")
    ([]{
        return std::string(512*1024, ' ');
    });

    // enables all log
    app.loglevel(crow::LogLevel::DEBUG);
    //crow::logger::setHandler(std::make_shared<ExampleLogHandler>());

    app.port(9000)
        .multithreaded()
        .run();
}
