import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedNetWorkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CachedNetWorkImageDemo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CachedNetWorkImageDemo"),
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl: "https://picsum.photos/250?image=9",
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
