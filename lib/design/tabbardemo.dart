import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("tabs demo"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.directions_bus),
                text: 'bus',
//                child: Text("BUS"),
              ),
              Tab(
                icon: Icon(Icons.directions_bike,size: 20.0,color: Colors.yellow,),
                child: Text("BIKE",style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize:10.0
                ),),
              ),Tab(
                icon: Icon(Icons.directions_transit),
                child: Text("TRANSIT"),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ]),
        ),
      ),
    );
  }
}
