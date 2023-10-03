import 'package:flutter/material.dart';
import 'package:path_master/component/custom_button.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/default_layout.dart';
import 'package:camera/camera.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {

  late List<CameraDescription> cameras;
  late CameraController cameraController;

  @override
  void initState(){
    startCamera();
    super.initState();
  }

  @override
  void dispose(){
    cameraController.dispose();
    super.dispose();
  }

  void startCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false
    );
    await cameraController.initialize().then((value) {
      if(!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    try {
      return DefaultLayout(
        isBottomBar: true,
        children: [
          
          SizedBox(height: Variable.defaultTopBarPadding),
          
          Text(
            "Connect to Head Unit",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Variable.whiteColor
            ),
          ),
          
          Padding(
            padding: EdgeInsets.all(Variable.defaultPadding),
            child: SizedBox(
              height: 430.0, // Set the desired height here
              child: CameraPreview(cameraController),
            ),
          ),

          CustomButton(
            backgroundColor: Variable.greenColor,
            width: 100,
            text: 'capture',
            onPressed: () {
              
            },
          ),

        ] 
      );
    } catch (e) {
      return const SizedBox();
    }
  }
}