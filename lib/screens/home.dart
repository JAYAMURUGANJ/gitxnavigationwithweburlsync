import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/second.dart';

class Home extends StatelessWidget {
  goToNext() {
    Get.to(Second());
  }

  _showSnackBar() {
    Get.snackbar(
      "Hey There",
      "Snackbar is easy",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title: "Simple Dialog",
      content: Text("Too Easy"),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: () => {}),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => {},
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    var data = 11;
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Package | Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Go To Second"),
              onPressed: () => goToNext(),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text(
                  "type like Name Route with passing prodouct id : /second "),
              onPressed: () {
                //Get.toNamed("/second");
                Get.toNamed("/second/id?$data", arguments: data);
              },
            )
          ],
        ),
      ),
    );
  }
}
