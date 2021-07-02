import 'package:flutter/material.dart';
import 'package:whatsapp/Views/calls.dart';
import 'package:whatsapp/Views/camera.dart';
import 'package:whatsapp/Views/chats.dart';

import 'Views/status.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(
        primaryColor: Color(0xff075e54), accentColor: Color(0xff25d366)),
    home: new Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Whatsapp"),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
            bottom: TabBar(
              controller: tabController,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ],
            )),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            Camera(),
            Chats(),
            status(),
            Calls(),
          ],
        ),
        floatingActionButton: tabController.index == 0
            ? FloatingActionButton(
                child: Icon(
                Icons.camera,
                color: Colors.white,
              ))
            : tabController.index == 1
                ? FloatingActionButton(
                    child: Icon(Icons.chat, color: Colors.white))
                : tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.camera_alt,
                                    color: Colors.blueGrey)),
                          ),
                          SizedBox(height: 10.0),
                          FloatingActionButton(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    : FloatingActionButton(
                        child: Icon(Icons.call, color: Colors.white),
                      ));
  }
}
