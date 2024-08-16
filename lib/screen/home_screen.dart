import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:Text('Goku',
            style:TextStyle(
              wordSpacing: 1,
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
       body: Column(
         children: [
           ListView.builder(
               shrinkWrap: true,
               itemCount: 2,
               itemBuilder: (BuildContext context,int index){
                 return Padding(padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 50,
                     width: 500,
                     color: Colors.red.shade300,
                   ),
                 );
               }
           )
         ],
       ),
       /* body:Column(
            children:[
              SizedBox(height:30,),
              Container(
                height: 100,
                width:300,
                color: Colors.red,
              ),
              SizedBox(height:30,),
              Container(
                height: 100,
                width:300,
                color: Colors.green,
              ),
              SizedBox(height:30),
              Row(
                children: [
                  SizedBox(width:30),
                  Container(
                    height: 100,
                    width:300,
                    color: Colors.yellow,
                  ),
                  SizedBox(width:30),
                  Container(
                    height: 100,
                    width:300,
                    color: Colors.pink,
                  ),
                ],

              )
            ]
        )*/

      // body: Center(
      //
      //   child: InkWell(
      //     onTap: (){
      //       print("Object");
      //     },
      // child: Card(
      //   color: Colors.pinkAccent,
      //   elevation: 30,
      //   shadowColor: Colors.black,
      //   child: Container(
      //     height: 100,
      //     width: 300,
      //   ),
      //
      //
      // ),
      //
      //   ),
      //
      // )
    );
  }
}
