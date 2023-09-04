import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class AppCamera extends StatefulWidget {
  const AppCamera({super.key});

  @override
  State<AppCamera> createState() => _AppCameraState();
}

class _AppCameraState extends State<AppCamera> {
  late List<CameraDescription> _cameras;
  late CameraController _controller;
  Future<void> _controllerInit = Future(() => null);
  int currentCameraPos = 0;

  @override
  initState() {
    startCamera();
    super.initState();
  }

  startCamera([int? camera]) async {
    _cameras = await availableCameras();

    _controller = CameraController(
      _cameras[camera ?? currentCameraPos],
      ResolutionPreset.max,
      enableAudio: true,
    );

    _controllerInit = _controller.initialize();

    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Camera")),
      body: FutureBuilder(
        future: _controllerInit,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GestureDetector(
              onDoubleTap: () {
                setState(() {
                  currentCameraPos = currentCameraPos == 0 ? 1 : 0;
                  startCamera();
                });
              },
              child: CameraPreview(_controller),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final image = await _controller.takePicture();

            if (!mounted) return;

            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: const Text("Display the picture"),
                  ),
                  body: Image.file(
                    File(image.path),
                  ),
                ),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
