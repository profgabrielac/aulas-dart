import 'package:dart_lists_maps/dart_lists_maps.dart' as dart_lists_maps;

void main(List<String> arguments) {
  //-----------------------------------------------------> LISTAS <-----------------------------------------------------
  //Para declarar uma lista
  List<String> nomes = ["Rafael", "Gabriela", "Leonardo"];

  //Em dart e em algumas linguagens, listas se iniciam com a posição 0
  //Para acessar uma posição dentro da lista deve passar a posição entre []
  print(nomes[0]);

  //Para adicionar um item na lista:
  nomes.add("Camila");

  //Para mostrar todos os itens da lista:
  print(nomes);

  //Para saber o tamanho da lista, a quantidade de itens dentro dela:
  print(nomes.length);

  //Para remover itens da lista, passar a posição que deseja remover
  nomes.removeAt(2);

  //Para inserir itens na lista, passar a posição seguida do conteúdo a ser inserido
  nomes.insert(1, "Pedro");

  //Para saber se dentro da sua lista possui um determinado item
  print(nomes.contains("Pedro"));

  //Podemos criar uma lista de objetos, onde entre <> passaremos o tipo do nosso objeto, no caso Pessoa
  List<Pessoa> listaPessoas = [];
  listaPessoas.add(Pessoa("Larissa", 30));
  listaPessoas.add(Pessoa("Helena", 31));

  //Laço de repetição para passar entre cada item da lista e printar em tela
  //Em algumas linguagens é chamado também de FOREACH
  for(Pessoa p in listaPessoas){
    print(p.nome);
  }
  

  //-----------------------------------------------------> MAP <-----------------------------------------------------

  //MAP basicamente é uma tabela que vai possuir uma chave(key) e um valor(value) para aquela determinada chave
  //EXEMPLO:
  // CHAVE(key)     VALOR(value)
  // 11           SÃO PAULO
  // 13           SANTOS

  //Para declararmos um map devemos indicar entre <> os tipos, primeiro da key em seguida do value
  Map<int, String> ddds = {};

  //Após declarado o Map podemos inserir os itens da seguinte maneira:
  ddds[11] = "SÃO PAULO";
  ddds[13] = "SANTOS";

  //Para mostrar os itens do Map
  print(ddds);

  //Para mostrar as chaves(keys) do Map
  print(ddds.keys);

  //Para mostrar os valores(values) do Map
  print(ddds.values);

  //Para remover uma key(chave) especifica
  ddds.remove(11);

  //Dentro do Map também podemos ter classes como vemos no exemplo abaixo com a classe Pessoa
  Map<int, Pessoa> pessoas = {};

  //Inserindo os itens do Map, primeiramente um int que é a nossa key, seguido da inserção com as propriedades do contrutor da classe passada Pessoa
  pessoas[1] = Pessoa("Gabriela", 27);
  pessoas[2] = Pessoa("Rafael", 26);

}

//Criação da classe utilizada para compor o segundo exemplo de Map e de criação de listas
class Pessoa{
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}
