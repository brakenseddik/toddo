class Task {
  Task({this.name, this.isdone = false});
  final String name;
  bool isdone;
  void toggleDone() {
    isdone = !isdone;
  }
}
