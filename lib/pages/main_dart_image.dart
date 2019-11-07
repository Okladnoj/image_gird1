import 'package:flutter/material.dart';
import 'package:image_gird/models/list_urul_img.dart';

import 'alert_add_url_img.dart';
import 'image_details_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ListMolelURL listMolelURL = new ListMolelURL();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: List.generate(listMolelURL.mylinks.length, (index) {
            if (Uri.parse(listMolelURL.mylinks[index]).isAbsolute) {
              return Ink.image(
                image: NetworkImage(listMolelURL.mylinks[index]),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageDetalisPage(
                                assetPath: listMolelURL.mylinks[index])));
                  },
                ),
              );
            } else {
              return Ink.image(
                image: AssetImage(listMolelURL.mylinks[index]),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageDetalisPage(
                                assetPath: listMolelURL.mylinks[index])));
                  },
                ),
              );
            }
          })),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          neverSatisfied(context, listMolelURL);
        },
        label: Text('Add URL Image'),
        icon: Icon(Icons.add_photo_alternate),
        backgroundColor: Colors.pink[800],
      ),
    );
  }
}
