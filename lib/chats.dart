import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Widget _chatDeatils(title, subtitle, time, imgUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
        maxRadius: 32.0,
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
      subtitle: Text(subtitle),
      trailing: Text(
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
            _chatDeatils("Aditya Verma", "Hey dude ! How are You", "6:33 PM",
                "https://cdn.imgbin.com/0/16/0/imgbin-computer-icons-programmer-symbol-vQwiQyV9ECed12RTgUaKF23rQ.jpg"),
            _chatDeatils("Mukul Yadav", "Hey dude ! How are You", "6:33 PM",
                "https://www.jing.fm/clipimg/detail/10-105064_online-mock-aptitude-technical-interview-questions-software-developer.png"),
            _chatDeatils("Ankit SVCE", "Hey dude ! How are You", "6:33 PM",
                "https://cdn.dribbble.com/users/259982/screenshots/2956274/jerry.png"),
            _chatDeatils("Harsh", "Hey dude ! How are You", "4:43 PM",
                "https://img.indiefolio.com/fit-in/1100x0/filters:format(webp):fill(transparent)/project/body/8b9f666b02fcfde714bed6ef69bf97a1.png"),
            _chatDeatils("Rudra", "Hello ! I am an Artist", "1:33 PM",
                "http://getdrawings.com/free-icon/bearded-man-icon-53.png"),
            _chatDeatils("QT", "Hello !", "8:33 AM",
                "https://thumbs.dreamstime.com/b/bearded-men-face-hipster-character-vector-illustration-fashion-silhouette-avatar-emblem-icon-label-91872033.jpg"),
            _chatDeatils("Pranjal Srivastava", "Hello !", "12:45 PM",
                "https://previews.123rf.com/images/solargaria/solargaria1709/solargaria170900008/85425363-user-icon-male-with-beard-icon-hipster-flat-icon-avatar-of-man-with-beard-flat-internet-icon-in-roun.jpg"),
            _chatDeatils("Pratham ", "Hi!", "12:02 AM",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTEqJ07Y1GCvnoWd76ffZwIyKleI2Y-UZrWrfxgldtXzyy1YU8"),
            _chatDeatils("Shubham", "Hello ! I am YouTuber", "4:09 PM",
                "https://previews.123rf.com/images/rikkyal/rikkyal1705/rikkyal170500010/77480708-bearded-men-face-hipster-character-vector-illustration-.jpg"),
            _chatDeatils("Naatu", "Hello ! Good Night", "3:40 AM",
                "https://www.clipartmax.com/png/middle/293-2931307_account-avatar-male-man-person-profile-icon-profile-icons.png"),
            _chatDeatils("Khushi", "Good Morining", "2:04 PM",
                "https://previews.123rf.com/images/morys/morys1705/morys170500012/77257952-smiling-chef-in-arms-crossed-pose-happy-chef-cook-in-hat-isolated-on-white-vector-illustration-.jpg"),
            _chatDeatils("Nam", "Hello !", "4:08 PM",
                "https://previews.123rf.com/images/sergeypykhonin/sergeypykhonin1804/sergeypykhonin180400067/99334975-happy-hipster-with-arms-crossed-on-chest-cartoon-vector-illustration.jpg"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0XFF25D366),
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
