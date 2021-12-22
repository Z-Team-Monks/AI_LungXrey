import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scanny/features/Connection/connection_repository.dart';
import 'package:scanny/features/initializations/initialization_bloc/initialization_bloc.dart';
import 'package:scanny/screens/splash.dart';

class InitializationView extends StatelessWidget {
  const InitializationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          InitializationBloc(connectionRepository: ConnectionRepository())
            ..add(InitialiazationBlocCheckConnection()),
      child: const SplashScreen(),
    );
  }
}
