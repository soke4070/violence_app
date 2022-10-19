import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:violence_app/views/screens_auth/registration_page.dart';
import '../../widgets/constants.dart';
import 'confirm_screen.dart';
import 'package:violence_app/widgets/themebbutton.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({Key? key}) : super(key: key);

  pickVideo(ImageSource src, BuildContext context) async {
    final video = await ImagePicker().pickVideo(source: src);
    if (video != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ConfirmScreen(
            videoFile: File(video.path),
            videoPath: video.path,
          ),
        ),
      );
    }
  }

  showOptionsDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            onPressed: () => pickVideo(ImageSource.gallery, context),
            child: Row(
              children: const [
                Icon(Icons.image),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    'Gallery',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () => pickVideo(ImageSource.camera, context),
            child: Row(
              children: const [
                Icon(Icons.camera_alt),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    'Camera',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop(),
            child: Row(
              children: const [
                Icon(Icons.cancel),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 1,
              child: Image.asset('assets/peace1.png', fit: BoxFit.cover),
            ),
          ),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                Center(
                  child: ClipOval(
                    child: ImageIcon(
                      AssetImage('lib/icons/danger.png'),
                      size: 20,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Text('Upload Vawulence',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 40),
                Text('Mix this Vawulence with Fearless',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                SizedBox(height: 50),
                ThemeButton(
                 
                  label: 'CLICK HERE IF YOU CHOOSE PEACE !',
            
                  highlight: Colors.red[900],
                  color: Colors.black,
                  onClick: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                ),
                ThemeButton(
                         icon: const Icon(Icons.add_a_photo, color: Colors.white,),
                  label: 'UPLOAD VAWULENCE',
                      
                  highlight: Colors.red[900],
                  color: Colors.black,
                  borderColor: Colors.white,
                  onClick: () => showOptionsDialog(context),
                  ),
                
                  ]
                  ),
                )
              ]))
        ,
      );
    
  }
}
