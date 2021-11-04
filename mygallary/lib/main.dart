import 'package:flutter/material.dart';
main()=> runApp(const HomeApp());
class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'there',
        home: Scaffold(
          appBar: AppBar(title: const Text('Image Gallagy'),),
          body: const GallagryApp(),
          ),

    );
  }
}

class GallagryApp extends StatefulWidget {
  const GallagryApp({Key? key}) : super(key: key);


  @override
  _GallagryAppState createState() => _GallagryAppState();
}

class _GallagryAppState extends State<GallagryApp> {
  var imagedata = [
    'https://images.unsplash.com/photo-1437652633673-cc02b9c67a1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=869&q=80',
    'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1614796718224-c01a6c787cf1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1616712566006-3073e04f2ce9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    'https://images.unsplash.com/photo-1618172193622-ae2d025f4032?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
  ]; 
  var titleText = [
    "This is Title Text 01",
    "This is Title Text 02",
    "This is Title Text 03",
    "This is Title Text 04",
    "This is Title Text 05",
  ];
  int curentindex = 0 ; 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 350,
        child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                  children: [
                    ElevatedButton(
                      onPressed: ()=>{
                        setState((){
                           if( curentindex >  0  ){
                             curentindex--; 
                           }
                        })
                      }, 
                      child: const Icon(Icons.arrow_back) ),
                      Column(
                        children: [
                          Image.network(imagedata[curentindex],
                          width: 400,
                          height: 300,
                   
                          ),
                          Text(titleText[curentindex] , style: const TextStyle(fontSize: 23,fontWeight: FontWeight.w800),)
                        ],
                      ),
                    
                     ElevatedButton(
                      onPressed: ()=>{
                        setState((){
                           if (curentindex < imagedata.length -1 ){
                          curentindex++;

                           }
                        })
                      }, 
                      child: const Icon(Icons.arrow_forward )),

                  ],
                ),
             
      ),
    );
  }
}