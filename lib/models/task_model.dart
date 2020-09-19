class Task {
  Task({this.name, this.isChecked = false});

  String name;
  bool isChecked = false;  

  void toggleChecked() {
    isChecked = !isChecked;
  }

}
