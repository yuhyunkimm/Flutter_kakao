
import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class ProfileCard extends StatelessWidget {
  // user가 다르게 들어오는 것 = new
  // 같은 데이터를 들어오게 되면 new를 하지 않는다
  // cost는 다른 데이터를 new 같은거면 한번만
  // 리스트뷰는 화면에 보이는 것만 그린다
  // 내리면서 new
  const ProfileCard({required this.user, Key? key}) : super(key: key);

  // 안 바뀌는 데이터
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Inkwell 은 기본 이벤트
      // GestureDetector 많은 이벤트를 준다
      leading: InkWell(
        child: CircleAvatar(
          radius: 20,
          // chashedimage 사용
          backgroundImage: NetworkImage(
            // url 주소
            user.backgroundImage,
          ),
        ),
      ),
      title: Text(
        user.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        user.intro,
        style: TextStyle(
          fontSize: 12
        ),
      ),
    );
  }
}
