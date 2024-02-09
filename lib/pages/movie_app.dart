import 'package:flutter/material.dart';
import 'package:movie/pages/add.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("movie App"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.orange.withOpacity(0.4),
                  Colors.yellow.withOpacity(0.4)
                ]
            )
        ),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieAdd()));

                }, child: Text("add movie")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: ()
                {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                }, child: Text("search movie")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: ()
                {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                }, child: Text("view movie")),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
