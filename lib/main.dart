import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:FirstPage(), // 첫 페이지를 시작 페이지로 지정
    );
  }
}

// 첫 페이지
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('First'),
      ),
      body:ElevatedButton(
        child:Text('다음 페이지로'),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
      )
    );
  }
}

// 두 번째 페이지
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Second'),
      ),
      body:ElevatedButton(
        child:Text('이전 페이지로'),
        onPressed:(){
          Navigator.pop(context); // 현재 화면을 종료하고 이전 화면으로 돌아가기
        },
      ),
    );
  }
}
