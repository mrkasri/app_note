import 'package:app_note/files/listnotes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "Title": "note",
      "Description": " this is a text",
      "Image": "images/note.png"
    },
    {
      "Title": "note",
      "Description": " this is a text",
      "Image": "images/note.png"
    },
    {
      "Title": "note",
      "Description": " this is a text",
      "Image": "images/note.png"
    },
    {
      "Title": "note",
      "Description": " this is a text",
      "Image": "images/note.png"
    },
    {
      "Title": "note",
      "Description": " this is a text",
      "Image": "images/note.png"
    },
    {
      "Title": "note",
      "Description": " this is a text",
      "Image": "images/note.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(
                    key: Key("$i"), child: ListNotes(notes: notes[i]));
              })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('addnote');
        },
      ),
    );
  }
}
