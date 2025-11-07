import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit() : super(FavState());


  void toggleFav() {
    emit(FavState(isFav: !state.isFav));
  }

}
