import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddo/models/task_data.dart';
import 'package:toddo/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (context) => TaskData(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: TaskScreen()));
  }
}
