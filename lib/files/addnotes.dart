// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  AddNote({Key? key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  TextFormField(
                      maxLength: 30,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Note title",
                          prefixIcon: Icon(Icons.note))),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    // <--- SizedBox
                    height: 200,
                    child: TextField(
                      maxLength: 200,
                      cursorColor: Colors.red,
                      maxLines: 200, // <--- maxLines
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Description',
                          border: OutlineInputBorder(),
                          fillColor: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Add image'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Save Note'),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
