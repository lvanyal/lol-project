import 'package:bloc/bloc.dart';
import 'package:lol_app/domain/repository/main_repository.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MainRepository _repository;

  HomeCubit(this._repository) : super(HomeInitial());

  void requestAccount() => _repository.requestAccount();
}
