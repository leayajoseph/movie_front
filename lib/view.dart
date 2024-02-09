import 'package:flutter/material.dart';
import 'package:movie/models/MovieModel.dart';
import 'package:movie/services/MovieServices.dart';

class ViewMovie extends StatefulWidget {
  const ViewMovie({super.key});

  @override
  State<ViewMovie> createState() => _ViewMovieState();
}

class _ViewMovieState extends State<ViewMovie> {
  Future<List<Movie>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=MovieApiService().getdata();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("movie App"),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot)
        {
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
            {
             return ListView.builder(
                 itemCount: snapshot.data!.length,
                 itemBuilder: (context,index)
             {
               return Card(
                 child: ListTile(
                   leading: Image.network(snapshot.data![index].url.toString()),
                   title: Text("MOVIE NAME: "+snapshot.data![index].name),
                   subtitle: Text("MOVIE RATING: "+snapshot.data![index].rating.toString()),
                 ),
               );
             });
            }
          else{
            return Text("Loading");
          }
        }),
      ),
    );
  }
}
