import 'package:flutter/material.dart';
import 'package:to_doey/screens/tasks_screens.dart';
import 'package:provider/provider.dart';

import 'models/task_state_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskStateNotifier>(
      create: (context) => TaskStateNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
