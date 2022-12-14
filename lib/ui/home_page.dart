import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:to_do_app/services/notification_services.dart';

import '../services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            'Theme Data',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
              title: 'Theme Changed',
              body: Get.isDarkMode
                  ? 'Activated Dark Theme'
                  : 'Activated Light Theme');
        },
        child: Icon(Icons.nightlight_round, size: 20),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(width: 20)
      ],
    );
  }
}
