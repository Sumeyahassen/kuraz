  import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: Container(
          child: Text("Home Screen"),
        ),
        bottomNavigationBar: AboutDialog.adaptive(
          applicationIcon: ElevatedButton(onPressed: (){

          }, child: Icon(Icons.home),
        ),
        ),
      );
    }
  }