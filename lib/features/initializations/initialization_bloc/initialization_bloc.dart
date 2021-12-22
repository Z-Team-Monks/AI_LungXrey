import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanny/features/Connection/connection_repository.dart';

part 'initialization_bloc_event.dart';
part 'initialization_bloc_state.dart';

class InitializationBloc
    extends Bloc<InitializationBlocEvent, InitializationBlocState> {
  final ConnectionRepository connectionRepository;
  InitializationBloc({required this.connectionRepository})
      : super(InitializationBlocConnectionStateLoading()) {
    on<InitialiazationBlocCheckConnection>((event, emit) async {
      emit(InitializationBlocConnectionStateLoading());
      final isConnected = await connectionRepository.isConnectedToInternet();
      if (isConnected) {
        emit(InitializationBlocConnectionStateLoaded(connected: true));
      } else {
        emit(InitializationBlocConnectionStateLoaded(connected: false));
      }
    });
  }
}
