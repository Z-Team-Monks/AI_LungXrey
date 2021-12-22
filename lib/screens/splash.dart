import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scanny/features/initializations/initialization_bloc/initialization_bloc.dart';
import 'package:scanny/utils/colors.dart';
import 'package:scanny/widgets/snack_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final borderRadius = 55.0;
    return Scaffold(
      body: Container(
        height: size.height,
        color: Colors.white,
        child: BlocListener<InitializationBloc, InitializationBlocState>(
          listener: (context, state) {
            if (state is InitializationBlocConnectionStateLoaded) {
              String message = "Please connect to an internet connection!";
              if (!state.connected) {
                final snackBar =
                    SnackBar(content: CustomSnackBar(message: message));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
              // Navigator
            }
          },
          child: Stack(
            children: [
              Container(
                color: Colors.blueAccent,
                height: size.height * 0.7,
                foregroundDecoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/woman_focused.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: size.width,
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(253, 253, 253, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius),
                      )),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        new RichText(
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                            children: [
                              const TextSpan(text: "Best Radiology with"),
                            ],
                          ),
                        ),
                        new RichText(
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 40.0,
                              color: Colors.blue[900],
                            ),
                            children: [
                              new TextSpan(
                                text: "with ",
                                style: new TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900],
                                ),
                              ),
                              new TextSpan(
                                  text: "AI Systems",
                                  style: new TextStyle(
                                    color: Colors.blue,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Icon(
                          Icons.health_and_safety_rounded,
                          size: 48.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
