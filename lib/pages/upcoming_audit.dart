import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itc_ui/routing/route_names.dart';

class UpcomingAudit extends StatelessWidget {
  const UpcomingAudit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming Audit"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.toNamed("/audit");
        },child: const Text("Click here"),),
      ),
    );
  }
}
