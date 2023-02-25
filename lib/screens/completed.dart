import 'package:first_app/screens/data.dart';
import 'package:flutter/material.dart';

class Completed_parent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Completed_child();
  }
}

class Completed_child extends State<Completed_parent> {
  final List<int> colorCodes = <int>[
    600,
    500,
    400,
    300,
    200,
    100,
  ];

  // Fetching the list
  UserData stared = UserData();
  Completed_child() {
    stared.add_new_data("List item 1");
    stared.add_new_data("List_item 2");
    stared.add_new_data("List_item 3");
    stared.add_new_data("List item 4");
    stared.add_new_data("List_item 5");
    stared.add_new_data("List_item 6");
  }

  @override
  Widget build(BuildContext context) {
    List<AddNewData> stared_data = stared.return_old_data();
    for (int i = 0; i < 6; i++) {
      stared_data[i].done = true;
    }
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: stared_data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.cyan[colorCodes[index]],
          child: Center(
            child:
                // Text('Entry ${entries[index]}'),
                CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(stared_data[index].notes),
              subtitle: Text("Date/Time"),
              secondary: Text("..."),
              value: stared_data[index].done,
              onChanged: (value) => setState(
                () {
                  stared_data[index].done = value;
                },
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
