import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_screen.dart';
void main(){
  runApp(Main());
}
class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body:TodoScreen() ,
      ),
    );
  }
}