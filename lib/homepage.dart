import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:language/translations/locale_keys.g.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(LocaleKeys.title.tr()),
          Text(LocaleKeys.message.tr()),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('en'));
                  },
                  child: Text('english')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('ta'));
                  },
                  child: Text('tamil'))
            ],
          )
        ],
      ),
    )));
  }
}
