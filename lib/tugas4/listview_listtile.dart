import 'package:flutter/material.dart';

class ListviewListtile extends StatelessWidget {
  const ListviewListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView & ListTile')),
      body: ListView(),
    );
  }
}
