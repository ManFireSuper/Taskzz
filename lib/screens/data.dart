class UserData {
  List<AddNewData> mainDataList = [];

  void add_new_data(String tempNotes) {
    mainDataList.add(AddNewData(tempNotes));
  }

  List<AddNewData> return_old_data() {
    return mainDataList;
  }
}

class AddNewData {
  String notes = "NaN";
  AddNewData(this.notes);
}
