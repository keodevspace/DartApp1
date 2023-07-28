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

bool funcEstaMadura(int dias){
  if (dias >= 5){
    return true;
  } else {
    return false;
  }
}

