import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text("Upload Image",
                    style: TextStyle(
                      fontSize: 34.0,
                      letterSpacing: 2.0,
                    )),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: IconButton(
                        onPressed: () async {
                          print("loading");
                          // final image = await _picker.pickImage(
                          //     source: ImageSource.gallery);
                          // final XFile? image = await ImagePicker.ge
                          final image =
                              _picker.getImage(source: ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.camera,
                          size: 100.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Center(
                      child: IconButton(
                        onPressed: () async {
                          print("loading");
                          // final image = await _picker.getImage(
                          //     source: ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.upload_file_rounded,
                          size: 70.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: DottedBorder(
                    strokeWidth: 1,
                    child: Container(
                      height: size.height * 0.3,
                      child: Center(
                        child: Text(
                          "Image not selected",
                          style: TextStyle(
                            fontSize: 29.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45.0, vertical: 25.0),
                      child: Text("Classify"),
                    ))
              ],
            )),
      ),
    );
  }
}
