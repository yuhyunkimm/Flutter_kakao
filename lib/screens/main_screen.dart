import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/chat_screen.dart';
import 'package:flutter_kakao/screens/friend_screen.dart';
import 'package:flutter_kakao/screens/more_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 상태 변수
  int _seletedIndex = 0;

  // void changeScreen(){
  //   setState(() {
  //
  //   });
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack 선택한 걸로 순서를 바꿀 수 있다
      body: IndexedStack(
        // 화면 바꿀 때
        index: _seletedIndex,
        children: [
          FriendScreen(),
          ChatScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 아래 두개를 false로 해야 아래 공간이 사라진다
        // 아래 라벨에 글이 있다면 누를때 안보이게 한다
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // MaterialColor(조도선택가능)
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        // black54 static으로 접근
        unselectedItemColor: Colors.black54,
        // index 의존성 주입
        onTap: (index) {
          // 추후 setState를 의미있는 메서드로 만들어서 사용
          setState(() {
            _seletedIndex = index;
          });
        },
        // 화면 바꿀 때
        currentIndex: _seletedIndex,
        items: [
          // FontAwesomeIcons 모든 아이콘 라이브러리 , label이 빠지면 오류가 난다
          // labal에 글을넣으면 아래에 들어간다
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsisH), label: ""),
        ], // bottomNavigationBar 필수 속성
      ),
    );
  }
}
