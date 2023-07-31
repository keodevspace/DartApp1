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
// if (cor != null){print("A cor da $nome é $cor");}
// parametro posicionais obrigatorios
// parametro nomeados opcionais
// parametro padrao mostrarMadura("Uva", 10);}

// escopo
// variaveis declaradas dentro de uma função só existem dentro da função
// variaveis declaradas fora de uma função existem em todo o código
// delimitadores de escopo: {} - tudo que está dentro de {} é um escopo


void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool? isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor.");
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}


// exercicio
// A Laranja pesa 98 gramas! Ela foi colhida há 30 dias e precisa de 20 para amadurecer, logo, a Laranja está madura!
// resposta
// String toString(
//     {required String nome,
//     required double peso,
//     required diasDesdeColheita,
//     int diasParaMadura = 30,
//     bool? isMadura}) {
//   if (isMadura == null) {
//     isMadura = diasDesdeColheita >= diasParaMadura;
//   }

//   String maduraString = "";
//   if (isMadura != null && !isMadura) {
//     maduraString = "não ";
//   }

//   String result =
//       "A $nome pesa $peso gramas! Ela foi colhida há  $diasDesdeColheita dias e precisa de  $diasParaMadura dias para amadurecer, logo, a $nome ${maduraString}está madura!";

//   return result;
// }


// FUNCAO RCURSIVA
// main() {
//   funcRecursiva();}

// funcRecursiva() {
//   print("Olá mundo?");
//   funcRecursiva();

// Se a função imprime algo e depois chama ela mesma, ela vai fazer isso indefinidamente, até gerar um erro que indica que o programa excedeu a quantidade máxima de chamadas recursivas definida pelo Sistema Operacional (o lendário StackOverflowException).
// Mas aprendemos que laços de repetições precisam de condições de parada para fazerem sentido. Será que podemos aplicar esse mesmo conceito a nossa função que chama ela mesma?

// Podemos! Para isso precisamos passar alguma informação que vamos usar na condição de parada, em um exemplo mais simples, um contador:

// funcRecursiva(int contador) {
//   print("Estamos a $contador iterações sem StackOverflow.");
//   funcRecursiva(contador + 1);
// }COPIAR CÓDIGO
// Adicionamos um novo parâmetro que será nosso contador e para cada nova chamada da função passamos esse mesmo contador incrementado com 1.

// Interessante! Agora a cada chamada da função temos uma informação diferente chegando. Mas isso ainda não explica qual o momento que devemos parar a função! Para isso vamos adicionar um novo parâmetro!

// funcRecursiva(int contador, int condicaoParada) {
//   print("Estamos a $contador iterações sem StackOverflow.");
//   funcRecursiva(contador + 1, condicaoParada);
// }COPIAR CÓDIGO
// Agora adicionamos a informação da condição de parada que é propagada para todas as chamadas da função sem se alterar. Mas isso não faz com que a função de fato pare de chamar ela mesma, precisamos testar esse contador!

// funcRecursiva(int contador, int condicaoParada) {
//   print("Estamos a $contador iterações sem StackOverflow.");
//   if (contador >= condicaoParada) {
//     return;
//   }
//   funcRecursiva(contador + 1, condicaoParada);
// }COPIAR CÓDIGO
// Adicionamos uma estrutura condicional para testar se o contador já está maior ou igual à condição de parada, se estiver, é chamado um return e a função imediatamente para sem chamar ela mesma.

// Agora sim! Basta chamarmos essa função na main passando por argumento em que ponto queremos começar e em qual ponto queremos terminar!

// main() {
//   funcRecursiva(0, 10);
// }

// funcRecursiva(int contador, int condicaoParada) {
//   print("Estamos há $contador iterações sem StackOverflow.");
//   if (contador >= condicaoParada) {
//     return;
//   }
//   funcRecursiva(contador + 1, condicaoParada);
