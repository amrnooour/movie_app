import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  const ActionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(border: Border.all(color: Colors.white),),
      child: const Center(child: Text("Action",style: TextStyle(color: Colors.white),)),
    );
  }
}