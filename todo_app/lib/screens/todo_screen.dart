  import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context){
      return 
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 221, 169, 150),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("Hi Sumeya Hassen",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
              ),
              SizedBox(height: 30,),
                Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
              backgroundColor: Colors.green,
              
            ),
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())),
             child: Text("Go to Todo add plase",style: TextStyle(fontSize: 20,color: Colors.white),)),
        
      ),
              
            ],
          ),
    
      );
      
    }
  }