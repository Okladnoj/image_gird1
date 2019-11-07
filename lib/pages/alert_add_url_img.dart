import 'package:flutter/material.dart';
import 'package:image_gird/models/list_urul_img.dart';

import '../main.dart';

Future<void> neverSatisfied(
    BuildContext context, ListMolelURL listMolelURL) async {
  TextEditingController _textFieldController = TextEditingController();
  final _textdecor =
      'https://i.pinimg.com/564x/51/1c/6d/511c6d416ef85660cf586491ae87f3c8.jpg';
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Add Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You must insert the URL address of the picture.'),
              TextField(
                controller: _textFieldController,
                decoration: InputDecoration(hintText: _textdecor),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text('ADD'),
            onPressed: () {
              final _link = _textFieldController.text != ''
                  ? _textFieldController.text
                  : _textdecor;
              listMolelURL.addlink(_link);
              runApp(MyApp());
              Navigator.of(context).pop();
            },
          ),
          new FlatButton(
            child: new Text('CLEAR'),
            onPressed: () {
              _textFieldController.clear();
            },
          ),
          new FlatButton(
            child: new Text('CANCEL'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
