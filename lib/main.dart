import 'dart:math';
import 'package:flutter/material.dart';

/*
* Parametros nomeados são por padrão opcionais, com required se torna obrigatorio
* Pode-se também definir valores padrões para contornar isso
*/
int soma({required int n1, required int n2}) {
  return n1 + n2;
}

// int? numero = 10;
// String? nome = "Jamilton";

// Promotion
int totalCaracteres(String? texto) {
  // Opção 1
  // if (texto == null) {
  //   return 0;
  // }
  // Opção 2 - Exceção
  if (texto == null) {
    throw "Texto não pode ser nulo";
  }
  return texto.length;
}

class Usuario {
  String? _nome;
  int totalCaracteres() {
    // Necessario variavel de apoio
    String? nome = _nome;
    // Opção 1
    // if (texto == null) {
    //   return 0;
    // }
    // Opção 2 - Exceção
    if (nome == null) {
      throw "Texto não pode ser nulo";
    }
    return nome.length;
  }
}
// ###########################

void main() {
  // Parametros nomeados
  int res = soma(n1: 1, n2: 2);

  /*
  * Lista pode ser nula? NÃO
  * Item pode ser nulo? NÃO
  */
  List<String> lista1 = [];
  //print("Lista: ${lista1}");

  /*
  * Lista pode ser nula? SIM
  * Item pode ser nulo? NÃO
  * */
  List<String>? lista2;
  //print("Lista 2: ${lista2}");

  /*
  * Lista pode ser nula? NÃO
  * Item pode ser nulo? SIM
  * */
  List<String?> lista3 = [null, "item"];
  //print("Lista 3: ${lista3}");

  /*
  * Lista pode ser nula? SIM
  * Item pode ser nulo? SIM
  * */
  List<String?>? lista4 = [null, "item"];
  //print("Lista 4: ${lista4}");

  /*
  * Map pode ser nulo? NÃO
  * Item pode ser nulo? NÃO
  * */
  Map<String, int> map1 = {};
  //print("Map 1: ${map1}");

  /*
  * Map pode ser nulo? SIM
  * Item pode ser nulo? NÃO
  * */
  Map<String, int>? map2;
  //print("Map 2: ${map2}");

  /*
  * Map pode ser nulo? NÃO
  * Item pode ser nulo? SIM
  * */
  Map<String, int?> map3 = {'idade': null};
  //print("Map 3: ${map3}");

  /*
  * Map pode ser nulo? SIM
  * Item pode ser nulo? SIM
  * */
  Map<String, int?>? map4 = {'idade': null};
  //print("Map 4: ${map4}");

  //Exemplos de Maps
  Map<String, String> estados = {
    'SP': 'São Paulo',
    'RJ': 'Rio de Janeiro',
  };
  //estados['MG'] = "Minas Gerais";
  //estados['MG'] = null;

  String? valor = estados['MG']; //Leitura do mapa retorna null

  print("Estados: ${valor}");

  // runApp(MaterialApp(
  //   title: "Null Safety",
  //   home: Home(),
  // ));

  //Variável não pode ser nula
  // String nome = "Jamilton";
  // int idade = 10;
  // double altura = 1.10;

  //E se precisar de uma variável nula?
  // String? complemento;
  // int? numero;
  // double? preco;

  //Variáveis nulas
  //double? int? bool? List?

  //Variáveis não nulas
  //double int bool List

  //operador (!) -> null assertion operator
  // int resultado = numero!;
  // print("Resultado é: $resultado");

  // String? (pode ser nulo) -> Não consegue chamar métodos
  // String (NÃO pode ser nulo) -> pode chamar métodos

  //String resultado = nome!;
  // String resultado = nome ?? "";
  // print("total caracteres: ${resultado.length}");

  /*
  * Como utilizar os operadores ? & !
  * */
  // List<String> lista1 = ['Morango', 'Banana', 'Melão'];
  // List<String>? lista2;
  // List<String?> lista3 = ['Morango', null, 'Melão'];
  //
  // print("lista1: $lista1");
  // print("lista2: $lista2");
  // print("lista1: $lista3");

  // List<String?> lista3 = ['Morango', null, 'Melão'];
  // String valor = lista3.first!;
  // print("valor é: ${valor}");

  //Operador (?.) -> null aware operator
  // List<String>? lista;
  // print("Total de itens: ${lista?.length}");

  // Random? random;
  // //random = Random();
  // print("Número aleatório: ${random?.nextInt(10)}");
}
