import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  Widget _callDeatils(urlImg, name, date, time, callstatus) {
    return ListTile(
      leading: CircleAvatar(
        radius: 32.0,
        backgroundImage: NetworkImage(urlImg),
      ),
      title: Text(name),
      subtitle: Row(
        children: <Widget>[callstatus, Text(date), Text(time)],
      ),
      trailing: IconButton(
          icon: Icon(Icons.call, color: Color(0XFF128C7E), size: 34),
          onPressed: () {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            _callDeatils(
                "https://lh3.googleusercontent.com/proxy/P7dLMjSEn8ktb73h54KVqvAFNFqCQqNEjWIWmkPE-araOmpVNaTEOgSHDWSzP8Ycgj83Id6g",
                "Aditya",
                " 13 February ",
                " 10:45 am ",
                Icon(Icons.call_received, size: 18, color: Colors.red)),
            _callDeatils(
                "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/lead-short-summer-haircut-gettyimages-492416565-1556829330.jpg?crop=0.494xw:0.987xh;0.324xw,0&resize=640:*",
                "Mukul Yadav",
                " 13 February ",
                " 10:45 am ",
                Icon(Icons.call_made, size: 18, color: Color(0XFF25D366))),
            _callDeatils(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQz11HWt20igMF7h5fBpgXtFfGEbrl_e-k4rqOGE_Ns4H6suxkG",
                "Ankit",
                " (2) 04 February ",
                " 60:40 am ",
                Icon(Icons.call_received, size: 18, color: Colors.red)),
            _callDeatils(
                "https://post.healthline.com/wp-content/uploads/2019/09/man-city-urban-walking-serious-732x549-thumbnail.jpg",
                "Khushi",
                " 28 February ",
                " 11:38 am ",
                Icon(Icons.call_made, size: 18, color: Color(0XFF25D366))),
            _callDeatils(
                "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                "Mrunal Gandhi",
                " 19/12/19 ",
                " 3:45 am ",
                Icon(Icons.call_received, size: 18, color: Color(0XFF25D366))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0XFF25D366),
          child: Icon(Icons.add_call),
        ),
      ),
    );
  }
}
