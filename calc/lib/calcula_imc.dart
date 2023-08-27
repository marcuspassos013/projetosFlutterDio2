class Pessoa{
  String nome = '';
  double peso = 0;
  double altura = 0;

  Pessoa(this.nome, this.peso, this.altura);

  double calcImc(){
    double imc = peso / (altura * altura);
    return imc;
  }
  
  void display(){
    print('''
Nome: $nome,
Peso: $peso,
Altura: $altura
    ''');
  print('Resultado: ${calcImc().toStringAsFixed(2)}');
    if(calcImc() < 16){
      print('$nome você está com magreza grave');
    }else 
      if(calcImc() == 16 || calcImc()< 17){
        print('$nome você está com magreza moderada');
      }else if(calcImc() == 17 || calcImc() < 18.5){
        print('$nome você está com magreza leve');
      }
      else if(calcImc() == 18.5 || calcImc() < 25){
        print('$nome parabéns você está saudável');
      }
      else if(calcImc() == 25 || calcImc() < 30){
        print('$nome é bom se cuidar você está com sobrepeso');
      }
      else if(calcImc() == 30 || calcImc() < 35){
        print('$nome sua saúde requer atenção, vamos malhar!!! (Obesidade Grau 1)');
      }
      else if(calcImc() == 35 || calcImc() < 40){
        print('$nome vamos fazer um regime!!! Obesidade Grau 2(severa)');
      }
      else if(calcImc() >= 40){
        print('$nome você não praticou exercícios e nem fez dieta por isso está com (Obesidade Grau 3(mórbida))');
      }
    
  }
}
