import 'package:flutter/material.dart';
import 'package:uii_act11_gonzalez0490/pages/home_page.dart';

void main() => runApp(MiAplicacion());

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
