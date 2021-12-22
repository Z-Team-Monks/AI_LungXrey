part of 'initialization_bloc.dart';

abstract class InitializationBlocState extends Equatable {}

// class InitializationBlocInitial extends InitializationBlocState {}

class InitializationBlocConnectionStateLoading extends InitializationBlocState {
  @override
  List<Object?> get props => [];
}

class InitializationBlocConnectionStateLoaded extends InitializationBlocState {
  final bool connected;
  InitializationBlocConnectionStateLoaded({required this.connected});

  @override
  List<Object?> get props => [connected];
}
