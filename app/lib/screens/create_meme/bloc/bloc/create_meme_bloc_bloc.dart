import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_meme_bloc_event.dart';
part 'create_meme_bloc_state.dart';

class CreateMemeBlocBloc extends Bloc<CreateMemeBlocEvent, CreateMemeBlocState> {
  CreateMemeBlocBloc() : super(CreateMemeBlocInitial()) {
    on<CreateMemeBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
