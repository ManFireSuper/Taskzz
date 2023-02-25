import 'package:first_app/screens/data.dart';
import 'package:flutter/material.dart';

class rocket_parent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return rocket_child();
  }
}

class rocket_child extends State<rocket_parent> {
  List<String> item_names = ['Add Task'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: item_names.length,
        itemBuilder: (_, int index) {
          return ListTile(
            style: ListTileStyle.drawer,
            onTap: () => {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return AddingTask_parent(context);
                },
              ),
            },
            title: Align(
              alignment: Alignment.center,
              child: Text(item_names[index]),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class AddingTask_parent extends StatefulWidget {
  BuildContext context;
  AddingTask_parent(this.context);

  @override
  State<StatefulWidget> createState() {
    return AddingTask_child(context);
  }
}

class AddingTask_child extends State<AddingTask_parent> {
  BuildContext context;
  UserData stared = UserData();
  // Date
  DateTime _datetime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _datetime = value!;
      });
    });
  }

  AddingTask_child(this.context);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Task Name :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox.square(
                  dimension: 8.0,
                ),
                Container(
                  width: 300,
                  child: TextField(),
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Task Type : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 300,
                  child: TextField(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Task Deadline : ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MaterialButton(
                    color: Colors.white,
                    highlightElevation: 10,
                    onPressed: (() {
                      _showDatePicker();
                    }),
                    child: Text(
                      _datetime.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox.square(
            dimension: 10,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Task Added Successfully!"),
                  ),
                );
                SnackBar(
                  content: Text("Task Added Successfully!"),
                );
              },
              child: Text(
                "SAVE",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
