import 'package:flutter/material.dart';
import 'package:whatsapp/Data/datamodel.dart';

class Chats extends StatelessWidget {
  const Chats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                Divider(
                  height: 0.8,
                ),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(
                        model[i].Pic,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          model[i].Name,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          model[i].Date,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(model[i].Msg),
                    ))
              ],
            ));
  }
}
