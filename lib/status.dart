import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final ImagePicker picker = ImagePicker();
  File? _image;
  Future getImage() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File;
    });
  }

  Widget _statusDetails(title, time, imgUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0XFF128c7e),
        backgroundImage: NetworkImage(imgUrl),
        radius: 32.0,
      ),
      title: Wrap(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      subtitle: Text(
        time,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(height: 12.0),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/pic1.png"),
                radius: 32.0,
              ),
              title: Text(
                "My Status",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Tap to add Status update"),
            ),
            SizedBox(
              height: 32,
              child: Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "Viewed Updates",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  )),
            ),
            _statusDetails("Mukul Yadav", "20 minutes ago",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKI4x9W18p4WFV7CKdNvvFW1PZoRT1a_ZYDML2rp4prwOm9Bmn"),
            _statusDetails("Nikhil Kumar", "50 minutes ago",
                "https://www.clipartmax.com/png/middle/293-2931307_account-avatar-male-man-person-profile-icon-profile-icons.png"),
            _statusDetails("Aditya Sharma", "2 hours ago",
                "https://images.unsplash.com/photo-1562979314-bee7453e911c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
            _statusDetails("Aditi", "8 hours ago",
                "https://img.etimg.com/thumb/width-640,height-480,imgsize-117423,resizemode-1,msid-72352451/mumbai-central-is-indias-first-eat-right-station.jpg"),
            _statusDetails("Aman Keshari", "16 hours ago",
                "https://www.tajhotels.com/content/dam/thrp/destinations/Nashik/16x7intro/Intro-16x7.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getImage();
          },
          backgroundColor: Color(0XFF25D366),
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
