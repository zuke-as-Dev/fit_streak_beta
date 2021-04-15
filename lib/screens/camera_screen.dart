import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
class Camerascreen extends StatefulWidget {
  @override
  _CamerascreenState createState() => _CamerascreenState();
}

class _CamerascreenState extends State<Camerascreen> {
  File _image1;
  File _image2;
  final picker = ImagePicker();

  Future getImage1fromcamera() async{
    final pickedImage1 = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if(pickedImage1 != null){
        _image1 = File(pickedImage1.path);
      }else{
        print("no image picked");
      }
    });
  }
  Future getImage2fromcamera() async{
    final pickedImage2 = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if(pickedImage2 != null){
        _image2 = File(pickedImage2.path);
      }else{
        print("no image picked");
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Image Picker for snap',style: TextStyle(fontSize: 20.0),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: Center(
                    child: _image1 == null ? Text("NO image1 found"): Image.file(_image1),
                  ),
                ),
              ),              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: Center(
                    child: _image2 == null ? Text("NO image2 found"): Image.file(_image2),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                backgroundColor: Colors.purple,
                onPressed: getImage1fromcamera,
                label: Text('Snap1',),
                icon: Icon(Icons.camera),
                tooltip: 'pick Image1 from camera',
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.purple,
                onPressed: getImage2fromcamera,
                label: Text('Snap2',),
                icon: Icon(Icons.camera),
                tooltip: 'pick Image2 from camera',
              ),
            ],
          )
        ],
        )
      );
  }
}
