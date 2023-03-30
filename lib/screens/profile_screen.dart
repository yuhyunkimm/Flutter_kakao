
import 'package:flutter_kakao/components/bottom_icon_button.dart';
import 'package:flutter_kakao/components/round_icon_button.dart';
import 'package:flutter_kakao/models/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.user ,Key? key}) : super(key: key);


  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(width: 15),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

Widget _buildMyIcons() {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomIconButton(
            icon: FontAwesomeIcons.comment,
            text: "나와의 채팅",
        ),
        SizedBox(
          width: 50,
        ),
        BottomIconButton(
            icon: FontAwesomeIcons.pen,
            text: "프로필 편집",
        ),
      ],
    ),
  );
}

Widget _buildFriendIcons() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomIconButton(
          icon: FontAwesomeIcons.comment,
          text: "1:1채팅",
        ),
        SizedBox(
          width: 50,
        ),
        BottomIconButton(
          icon: FontAwesomeIcons.pen,
          text: "통화하기",
        ),
      ],
    ),
  );
}