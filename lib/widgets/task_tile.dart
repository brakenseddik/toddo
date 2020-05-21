import 'package:flutter/material.dart';

// ignore: camel_case_types
class taskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallback;
  final Function longPress;
  taskTile({this.isChecked, this.title, this.checkBoxCallback, this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPress,
        title: Text(
          title,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkBoxCallback));
  }
}
/*(
*/
