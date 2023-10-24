
sealed class PalavaChaveState {}

class PalavaChaveInitial extends PalavaChaveState{}

class PalavaChaveSuccess extends PalavaChaveState {
  var listPalavra = [];
  PalavaChaveSuccess({
    required this.listPalavra,
  });
}
