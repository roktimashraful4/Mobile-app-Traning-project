import 'package:flutter/material.dart';

main() => runApp(Home());
class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String text = "Home " ;
  void _changeText(String t){
    setState(() {
     text = t; 

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: 
            Container(
            
              child: Column(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Facebook "),
                      SizedBox(width: 50,),
                      IconButton(onPressed: ()=>{_changeText("Facebook Home")}, icon: Icon(Icons.home)),
                      IconButton(onPressed: ()=>{_changeText("Facebook Massages ")}, icon: Icon(Icons.messenger)),
                      IconButton(onPressed: ()=>{_changeText("Facebook Groups ")}, icon: Icon(Icons.supervised_user_circle)),
                      IconButton(onPressed: ()=>{_changeText("Search Your Frinds  ")}, icon: Icon(Icons.search_sharp)),
                      IconButton(onPressed: ()=>{_changeText("Facebook Menu ")}, icon: Icon(Icons.menu)),

                    ],
                  )
                ],
              ),
            ),
        ),
        body:
        Center(
          child: Text( "$text", style:TextStyle(fontSize: 50, color: Colors.pink)),

        ), 
       floatingActionButton: FloatingActionButton(onPressed: ()=>{
         _changeText("Facebook Contact")
       },
        backgroundColor:Colors.pink,
        child: Icon(Icons.phone),
        
       ),
       
        
        ),
    );
  }
}