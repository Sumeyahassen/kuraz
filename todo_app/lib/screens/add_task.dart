import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class AddTask extends StatefulWidget {
  AddTask({ Key? key }) : super(key: key);

  @override
_AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
    final TextEditingController _todoControler=TextEditingController();
  List <Todo> tasks=[];
void addTask(String name){
  setState(() {
    tasks.add(
      Todo(createAt: DateTime.now(), id:DateTime.now().toString(), task:name )
      
    );
   _todoControler.clear();
  });
  
}
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
          
            child: TextField(
              controller:_todoControler,
              decoration: InputDecoration(
                hintText: "Write todo task",hintStyle: TextStyle(color: const Color.fromARGB(255, 186, 178, 178)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 200, 97, 60),
                  )
                )
            
              ),
            ),
          ),
         SizedBox(height: 5,),
          IconButton(onPressed: (){
            if(_todoControler.text.isNotEmpty){
              addTask(_todoControler.text);
            }
            else{

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Center(
        child: Text("please insert task",style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 2),
      action:
       SnackBarAction(label: "Ok", onPressed:(){
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
       },
      ),
      ),
    );
            }
          }, icon: Icon(Icons.add,size: 50,color: Colors.green,))
        ],
      ),
      
    );
  }
}