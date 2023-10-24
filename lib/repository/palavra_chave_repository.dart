class PalavraChaveRepository {
  List<String> compararDados(List<String> palavras, String texto) {
    try {
      var novasPalavras = <String>[];
      var novoTexto = <String>[];
      novoTexto.add(texto);

       var te = palavras.map((e) {
        if (novoTexto.contains(e) == true) {
         return  novasPalavras.add(e);
        } else {
          'Nao informado';
        }
      }).toList();
print(te);
      return novasPalavras;
    } on Exception {
      throw Exception('Erro ao buscar informação');
    }
  }
}
