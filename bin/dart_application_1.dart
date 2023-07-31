import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  String nome = "Laranja";
  double peso= 0.5;
  String cor = "Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 10;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);
  print(funcEstaMadura(50));

}

// bool funcEstaMadura(int dias){
//   if (dias >= 5){
//     return true;
//   } else {
//     return false;
//   }
// }


// Parâmetros
// "void" (vazio) é opcional usar
// Parametro Obrigatório precisa vir na ordem que foi estipulada no argumento
// "String?" (interrogação) é opcional usar cor, ou seja, pode ser nulo sem dar erro
// {String? cor} é um parametro nomeado opcional e é chamado com cor: "Roxa" - fica mais fácil de entender o código com parametros nomeados
// Parametro Nomeado Opcional pode vir em qq ordem
// Parametro com padrão (default) é um parametro nomeado opcional que já vem com um valor padrão

// Modificador required - torna o parametro obrigatório
// mostrarMadura (String nome, int dias, {required String cor})

mostrarMadura (String nome, int dias, {String cor = "Verde"}){
  if(dias >= 10){
    print("$nome está madura há $dias dias");
  } else {
    print("$nome não está madura");
  }

// if (cor != null){print("A cor da $nome é $cor");}

// parametro posicionais obrigatorios
// parametro nomeados opcionais
// parametro padrao mostrarMadura("Uva", 10);}

mostrarMadura("Uva", 10, cor:"Roxa");
}



