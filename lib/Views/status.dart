import 'package:flutter/material.dart';
import 'package:whatsapp/Data/Status_model.dart';

class status extends StatelessWidget {
  const status({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          "https://randomuser.me/api/portraits/men/1.jpg",
                          width: 50.0,
                          height: 50.0,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Tap add to status updates"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: model2.length,
              itemBuilder: (context, i) => new Column(
                    children: <Widget>[
                      Divider(
                        height: 0.8,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                            model2[i].Pic,
                          ),
                        ),
                        title: Text(
                          model2[i].Name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text(model2[i].Date),
                      )
                    ],
                  )),
        )
      ],
    );
  }
}
