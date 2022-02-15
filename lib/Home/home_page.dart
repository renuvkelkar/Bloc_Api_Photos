import 'dart:js';

import 'package:bloc_photos/Bloc/photos_bloc.dart';
import 'package:bloc_photos/Bloc/photos_bloc.dart';
import 'package:bloc_photos/Bloc/photos_bloc.dart';
import 'package:bloc_photos/Bloc/photos_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {







  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  @override
  void initState() {
    super.initState();
    _loadAlbums();
  }

  _loadAlbums() async {
    BlocProvider.of<PhotosBloc>(context).add(FetchPhotos());
  }

  Widget build(BuildContext context) {
    // final abc = BlocProvider.of<PhotosBloc>(context).add(FetchPhotos());

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc Photos"),

      ),
      body: BlocBuilder<PhotosBloc, PhotosState>(
        builder: (context, state) {
       if(state is PhotosLoading){
         return CircularProgressIndicator();
       }else if(state is PhotosError){
         return Text("there is some error");

       }
          return ListView.builder(
              itemCount: state.abc.,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    child: Column(
                      children: [
                  //       ElevatedButton(onPressed:(){
                  // BlocProvider.of<ColorBloc>(context).add(ChangeColorEvent());
                  // }, child: const Text("Change backgound color")),

                    Text()),
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/2965/2965705.png",
                          height: 30, width: 30,)
                      ],
                    ),
                  ),

                );
              });
        },
      ),
    );
  }
}
