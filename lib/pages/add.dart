import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/services/MovieServices.dart';

class MovieAdd extends StatefulWidget {
  const MovieAdd({super.key});

  @override
  State<MovieAdd> createState() => _MovieAddState();
}

class _MovieAddState extends State<MovieAdd> {
  TextEditingController ob1=new TextEditingController();
  TextEditingController ob2=new TextEditingController();
  TextEditingController ob3=new TextEditingController();

  void sendValues() async{
    final response=await MovieApiService().sendData(ob1.text, ob2.text, ob3.text);
    if(response["status"]=="success")
      {
        print("successfully added");
      }
    else
      {
        print("Error");
      }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              TextField(
                controller: ob1,
                decoration: InputDecoration(
                  labelText: "enter movie image url",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob2,
                decoration: InputDecoration(
                    labelText: "enter movie name",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: ob3,
                decoration: InputDecoration(
                    labelText: "enter movie rating",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: sendValues, child: Text("add movie")),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  }, child: Text("back")),
              SizedBox(height: 20,),


            ],
          ),
        ),
        ),

    );
  }
}
