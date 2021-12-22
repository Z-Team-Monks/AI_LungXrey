import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'classify_bloc_event.dart';
part 'classify_bloc_state.dart';

class ClassifyBlocBloc extends Bloc<ClassifyBlocEvent, ClassifyBlocState> {
  ClassifyBlocBloc() : super(ClassifyBlocInitial()) {
    on<ClassifyBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
