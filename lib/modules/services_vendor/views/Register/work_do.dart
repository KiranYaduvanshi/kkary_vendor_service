import 'package:flutter/material.dart';
import 'package:kkary_vendors/common_widgets/linear_progress_indicator.dart';

class WorkDo extends StatelessWidget {
   WorkDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonWidgets.search(title: "Search electronic, plumber etc"),
    );
  }
}
