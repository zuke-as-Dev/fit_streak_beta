import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  }
}

class rate_us extends StatefulWidget {
  @override
  _rate_usState createState() => _rate_usState();

}

class _rate_usState extends State<rate_us> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rating'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Name'),
                    // ignore: missing_return
                    validator: (value) {
                      if (value.trim().isEmpty){
                        return 'Name Required';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Email'),
                    // ignore: missing_return
                    validator: (value) {
                      if (value.trim().isEmpty){
                        return 'Email Required';
                      } else if (value.contains('@')){
                        return 'Nope';
                      }
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Your text goes here'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: (){
                      if (formKey.currentState.validate()){
                        print('The form is valid');
                      }
                    },
                    child: Text('Submit'),
                  )
                ],
              ),
            )
        ),
      ),
    );

  }
}
