import 'package:flutter/material.dart';

class UserData {
  List<AddNewData> mainDataList = [];

  add_new_data(String tempNotes) {
    mainDataList.add(AddNewData(tempNotes));
  }

  List<AddNewData> return_old_data() {
    return mainDataList;
  }
}

class AddNewData {
  String notes = "NaN";
  bool? done = false;
  AddNewData(this.notes);

  String getNewString() {
    return notes;
  }

  bool? getNewDone() {
    return done;
  }
}
