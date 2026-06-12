class Todo{
 final String task;
  final String id;
  final bool isComplate;
  final DateTime createAt;
 
  Todo({
   
   required this.createAt,
   required this.id,
   this.isComplate=false,
   required this.task,}
  );
}