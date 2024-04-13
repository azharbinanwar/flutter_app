import 'package:flutter/material.dart';
import 'package:flutter_app/bloc_and_generic/counter_page.dart';
import 'package:flutter_app/bloc_and_generic/webivew.dart';
import 'package:flutter_app/bloc_form/pages/form_validation_page.dart';
import 'package:flutter_app/theme/app_theme_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter App')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Form Validation'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FormValidationPage(),
            )),
          ),
          ListTile(
            title: const Text('App Theme'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AppThemePage(),
            )),
          ),
          ListTile(
            title: const Text('Bloc and Generic'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CounterPage(),
            )),
          ),
          ListTile(
            title: const Text('My Profile'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => WebViewPage(
                url: 'https://medium.com/@azharbinanwar',
              ),
            )),
          ),
        ],
      ),
    );
  }
}
