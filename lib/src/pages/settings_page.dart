import 'package:flutter/material.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secundaryColor = true;
  int _genre = 1;
  String _name = 'Leo';
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _textController = new TextEditingController(text: _name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        drawer: MenuWidget(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Setting',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SwitchListTile(
                value: _secundaryColor,
                title: Text('Seconday Color'),
                onChanged: (value) {
                  setState(() {
                    _secundaryColor = value;
                  });
                }),
            RadioListTile(
                value: 1,
                title: Text('Male'),
                groupValue: _genre,
                onChanged: (value) {
                  setState(() {
                    _genre = value;
                  });
                }),
            RadioListTile(
                value: 2,
                title: Text('Female'),
                groupValue: _genre,
                onChanged: (value) {
                  setState(() {
                    _genre = value;
                  });
                }),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                    labelText: 'Name',
                    helperText: 'Person name using the phone'),
                onChanged: (value) {},
              ),
            )
          ],
        ));
  }
}
