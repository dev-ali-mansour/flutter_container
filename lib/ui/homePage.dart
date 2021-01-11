import 'package:flutter/material.dart';
import 'package:flutter_container/ui/myContainer.dart';

class HomePage extends StatelessWidget {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lightBlueAccent.shade700,
          title: new Text(
            'Egypt Guide',
            textDirection: TextDirection.ltr,
          ),
          actions: [
            new IconButton(
                icon: new Icon(Icons.add_a_photo),
                onPressed: () => _onPhotoActionClicked()),
            new IconButton(
                icon: new Icon(Icons.home),
                onPressed: () => _onHomeActionClicked()),
          ],
        ),
        body: new Material(
          color: Colors.lightBlueAccent,
          child: new MyContainer(),
        ));
  }

  // Reset counter when clicked home action
  _onHomeActionClicked() {
    counter = 0;
    debugPrint('Counter reset!');
  }

  // Increment photo action click times and display it to user
  _onPhotoActionClicked() {
    counter++;
    debugPrint('Photo action clicked $counter times!');
  }
}
