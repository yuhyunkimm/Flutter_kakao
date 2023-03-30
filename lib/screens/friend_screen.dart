import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/profile_card.dart';
import 'package:flutter_kakao/models/user.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("친구"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          ProfileCard(user: me),
          // 구분선 hr
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("친구"),
                SizedBox(width: 6),
                Text("${friends.length}"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              // 남은 공간의 크기를 계산해서 만들어준다 다시 new하지 않고
              // 지나간 애들을 다시 그림을 바꿔서 가져와준다
              itemCount: friends.length,
              itemBuilder: (context, index) => ProfileCard(user: friends[index]),
            ),
          ),
        ],
      ),
    );
  }
}
