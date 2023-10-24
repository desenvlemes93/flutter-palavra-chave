import 'package:bloc/bloc.dart';
import 'package:project_palavra_chave/pages/controller/palava_chave.state.dart';
import 'package:project_palavra_chave/repository/palavra_chave_repository.dart';

class PalavraChaveController extends Cubit<PalavaChaveState> {
  PalavraChaveController() : super(PalavaChaveInitial());

  Future<void> compararPalavrasChaves(
      List<String> palavras, String texto) async {
    final repository = PalavraChaveRepository();

    emit(PalavaChaveInitial());
    final novaList = repository.compararDados(palavras, texto);
    print('Nova LIsta ${novaList}');
    emit(PalavaChaveSuccess(listPalavra: novaList));
  }
}
