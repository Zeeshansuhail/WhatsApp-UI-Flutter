import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Data/call_model.dart';

class Calls extends StatelessWidget {
  const Calls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: model1.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                Divider(
                  height: 0.8,
                ),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(
                        model1[i].Pic,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          model1[i].Name,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Icon(
                          Icons.phone,
                          color: Color(0xff25d366),
                          size: 25,
                        ),
                      ],
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.all(2.0),
                      child: Text(model1[i].Date),
                    ))
              ],
            ));
  }
}
