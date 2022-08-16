import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

class ThreeD extends StatefulWidget {
  const ThreeD({Key? key}) : super(key: key);

  @override
  State<ThreeD> createState() => _ThreeDState();
}

class _ThreeDState extends State<ThreeD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ModelViewer(
        src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}
