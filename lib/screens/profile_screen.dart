import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.user ,Key? key}) : super(key: key);


  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ProfileScreeen"),
      ),
    );
  }
}
