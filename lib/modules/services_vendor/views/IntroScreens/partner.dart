import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/app_colors.dart';

class Partner extends StatefulWidget {
  const Partner({Key? key}) : super(key: key);

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: const [
          LinearProgressIndicator(
            minHeight: 20,
            value: 0.2,
            backgroundColor: AppColors.blueDark,
            color: AppColors.blueLight,

          ),
          Align(child: Text("Few more steps to see your earnings"),alignment: Alignment.topLeft,),
          Text("Tell us about yourself"),
        ],
      ),
    ));
  }
}
