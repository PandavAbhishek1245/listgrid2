import 'package:flutter/material.dart';
import 'package:listgrid2ui/second_screen.dart';
import 'package:sizer/sizer.dart';

class FristScreen extends StatefulWidget {
  const FristScreen({Key? key}) : super(key: key);

  @override
  State<FristScreen> createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: 400,
       decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80"), fit: BoxFit.fill,
          ),
        ),
       child: Padding(
         padding: const EdgeInsets.all(25.0),
         child: Column(
           children: [
             Row(
               children: [
                 Text("Let's enjoy \nthe Beautiful world.",style: TextStyle(fontSize: 30,color: Colors.white),),
               ],
             ),

             SizedBox(height: 15,),
             Row(
               children: [
                 Text("Enjoy the breathtaking view of the nature.\nrealx and cherish your dreams to the fullest",style: TextStyle(fontSize: 17,color: Colors.white),),
               ],
             ),

             SizedBox(height: 68.h,),

             Container(
               height: 7.h,
               width: 70.w,
               decoration: BoxDecoration(
                 color: Colors.cyan.withOpacity(0.8),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Center(child: GestureDetector(
                 onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                   Navigator.pushNamed(context, '/second');
                 },
                   child: Text("Let's Go",style: TextStyle(fontSize: 20,color: Colors.white),)
               ),),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
