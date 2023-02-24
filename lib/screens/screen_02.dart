import 'package:flutter/material.dart';

class Screen_2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChildScreen_2();
  }
}

class ChildScreen_2 extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 300,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Icon(Icons.rocket),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // First Column
          children: [
            // Intro
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Center(
                child: Text(
                  "Taskzz",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Divider(
              height: 20,
              color: Colors.black,
              thickness: 5,
            ),
            // List Starts from here
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  child: VerticalDivider(
                    thickness: 3,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.star),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class Screen_2 extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return ChildScreen_2();
//   }
// }

// class ChildScreen_2 extends State<Screen_2> {
//   // Main List
//   List<List<Widget>> whichList = [];
//   int show = 0;

//   ChildScreen_2() {
//     whichList = ListMaker().listMakerHelper(whichList);
//   }

//   // Main List

//   int listNumber = 0;
//   void initState() {}
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         bottomNavigationBar: BottomAppBar(
//           shape: const CircularNotchedRectangle(),
//           child: Container(
//             height: 50.0,
//             width: 50.0,
//             child: SizedBox(
//               height: 30,
//               width: 30,
//               child: TextButton(
//                 child: Icon(
//                   Icons.menu,
//                 ),
//                 onPressed: () => {
//                   showModalBottomSheet(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return SizedBox(
//                         height: 300,
//                         child: Center(
//                           child: ElevatedButton(
//                             onPressed: () => Navigator.pop(context),
//                             child: Icon(
//                               Icons.close,
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 },
//               ),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return SizedBox(
//                   height: 300,
//                   child: Center(
//                     child: ElevatedButton(
//                       onPressed: () => Navigator.pop(context),
//                       child: Icon(
//                         Icons.close,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//           child: Text("+"),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text("Tasks", style: TextStyle(fontSize: 30)),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: ListProvider_Child().listReturner(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   decoration: BoxDecoration(
//                     color: Colors.redAccent,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   height: MediaQuery.of(context).size.height * 0.45,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: whichList[show],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text("Completed:"),
//                 Container(
//                   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   decoration: BoxDecoration(
//                     color: Colors.blueAccent,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   height: MediaQuery.of(context).size.height * 0.23,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: whichList[show],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ListMaker {
//   List<List<Widget>> listMakerHelper(List<List<Widget>> temp) {
//     for (int i = 0; i < 8; i++) {
//       temp.add(
//         Tasks(i).listProvider(),
//       );
//     }
//     return temp;
//   }
// }

// class Tasks {
//   int whichone = 0;
//   Tasks(this.whichone);

//   List<Widget> listProvider() {
//     List<Widget> taskContainers = [];
//     for (int i = 0; i < 10; i++) {
//       taskContainers.add(
//         ParentCheckBox(whichone),
//       );
//     }
//     return taskContainers;
//   }
// }

// class ParentCheckBox extends StatefulWidget {
//   int whichone = 0;
//   ParentCheckBox(this.whichone);
//   @override
//   State<StatefulWidget> createState() {
//     return ChildCheckBox(whichone);
//   }
// }

// class ChildCheckBox extends State<ParentCheckBox> {
//   int whichone = 0;
//   ChildCheckBox(this.whichone);
//   bool? _boxVal = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 50,
//       child: CheckboxListTile(
//         controlAffinity: ListTileControlAffinity.leading,
//         title: Text("$whichone is a list item"),
//         subtitle: Text("Date/Time"),
//         secondary: Text("..."),
//         value: _boxVal,
//         onChanged: (value) => setState(
//           () {
//             _boxVal = value;
//           },
//         ),
//       ),
//     );
//   }
// }

// class ListProvider_Child {
//   List<Widget> listprovider = [];
//   int tempo = 0;

//   ListProvider_Child() {
//     for (int i = 0; i < 8; i++) {
//       listprovider.add(
//         ElevatedButton(
//           onPressed: () {
            
//           },
//           child: Text("List$i"),
//         ),
//       );
//       listprovider.add(
//         SizedBox(
//           width: 20,
//         ),
//       );
//     }
//   }

//   List<Widget> listReturner() {
//     return listprovider;
//   }
// }
