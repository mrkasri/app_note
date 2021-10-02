import 'package:flutter/material.dart';

class ListNotes extends StatelessWidget {
  final notes;

  const ListNotes({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Image(image: AssetImage(notes['Image'])),
            flex: 1,
          ),
          Expanded(
            child: ListTile(
              title: Text('${notes['Title']}'),
              subtitle: Text('${notes['Description']}'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
            flex: 4,
          ),
        ],
      ),
    );
  }
}
