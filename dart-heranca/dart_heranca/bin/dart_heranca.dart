import 'package:dart_heranca/dart_heranca.dart' as dart_heranca;

void main(List<String> arguments) {
  //Instanciando o objeto PROFESSOR e passando os dados dentro do construtor
  Professor professor = Professor("Gabriela", 26, "PDS", 2);
  
  //Ao mostrar na tela o objeto PROFESSOR é utilizado o metódo toString() do dart, dentro da classe que 
  //estamos sobrepondo esse método com o @overrride para mostrar em tela do jeito que queremos
  print(professor);

  //Aqui estamos chamando uma função dentro da classe PROFESSOR
  professor.darAula();

  //Instanciando o objeto ALUNO e passando os dados dentro do construtor
  Aluno aluno = Aluno("Rafael", 16, true, "2A");

  //Ao mostrar na tela o objeto ALUNO é utilizado o metódo toString() do dart, dentro da classe ALUNO 
  //estamos sobrepondo esse método com o @overrride para mostrar em tela do jeito que queremos
  print(aluno);

  //Aqui estamos chamando uma função dentro da classe ALUNO
  aluno.estudar();
}


//Criação da nossa classe SUPER que será herdada por outras classes que tem propriedades em comum
class Pessoa{
  //Todas essas propriedades estaram disponiveis para classes que herdarem essa super classe
  String nome;
  int idade;

  //Criação do construtor
  Pessoa(this.nome, this.idade);

  //Método que estará disponivel para classes que herdarem essa super classe
  void fazerAniversario(){
    print("$nome fez aniversário");
  }
}

//Criação de uma classe herdando outra, usamos o extends seguido da classe a ser herdada
class Aluno extends Pessoa{
  //Declaração de propriedades da classe atual
  //Lembrando que além dessas propriedades a classe também terá as propriedades da classe herdada
  bool matriculado;
  String sala;

  //Ao criar o contrutor da classe devemos colocar as propriedades da classe herdada seguidas das propriedades da classe atual
  Aluno(String nome, int idade, this.matriculado, this.sala) : super(nome, idade);

  //Métodos pertencentes somente a classe atual
  void fazerProva(){
    print("$nome está fazendo prova");
  }

  void estudar(){
    print("$nome está estudando");
  }

  //O override serve para sobrepor métodos já existentes, nesse caso estamos sobrepondo o método da classe herdada para retornar o que desejamos
  @override
  void fazerAniversario(){
    print("o Aluno da sala $sala fez aniversário");
  }

  //Aqui estamos sobrepondo o método toString() assim como comentado na chamada dentro do bloco main()
  @override
  String toString(){
    return "Aluno | Nome: $nome, Sala: $sala";
  }
}

class Professor extends Pessoa{
  String materia;
  int qtdAulas;

  Professor(String nome, int idade, this.materia, this.qtdAulas) : super(nome, idade);

  void corrigirProva(){
    print("$nome está corrigindo prova");
  }

  void darAula(){
    print("$nome está dando aula");
  }

  @override
  void fazerAniversario(){
    print("o Professor da matéria $materia fez aniversário");
  } 

  @override
  String toString(){
    return "Professor | Nome: $nome, Matéria: $materia";
  }
}
