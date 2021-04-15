import 'package:flutter/material.dart';
import 'package:fit_streak/screens/user.dart';

class EditUser extends StatefulWidget {
  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  final _dateFocusNode = FocusNode();
  final _heightFocusNode = FocusNode();
  final _weightFocusNode = FocusNode();
  final _genFocusNode = FocusNode();
  final _slotFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();
  var _editedUser = User(
    id: null,
    name: '',
    date: '',
    height: 0,
    weight: 0,
    timeslot: '',
    money: 0,
    gender: '',
  );
  static var count;
  
  @override
  void dispose() {
    _dateFocusNode.dispose();
    _heightFocusNode.dispose();
    _weightFocusNode.dispose();
    _genFocusNode.dispose();
    _slotFocusNode.dispose();
    super.dispose();
  }

  void _saveForm() {
    final isValid =_form.currentState.validate();
    if(!isValid){
      return;
    }
    _form.currentState.save();
    Navigator.pushNamed( context , '/home');
    print(_editedUser.name);
    print(_editedUser.height);
    print(_editedUser.date);
    print(_editedUser.gender);
    print(_editedUser.timeslot);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle),
                    labelText: 'User Name'),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_dateFocusNode);
                },
                // ignore: missing_return
                validator: (value) {
                  if(value.isEmpty){
                    // ignore: missing_return,
                    return 'Please provide  your Name';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  _editedUser = User(
                    name: value,
                    date: _editedUser.date,
                    height: _editedUser.height,
                    weight: _editedUser.weight,
                    timeslot: _editedUser.timeslot,
                    money: _editedUser.money,
                    gender: _editedUser.gender,
                    id: null,
                  );
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today_rounded),
                    labelText: 'Date of Birth',
                    hintText: 'DD/MM/YYYY'
                ),
                validator: (value) {
                  if(value.isEmpty){
                    // ignore: missing_return,
                    return 'Please provide  a value';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  _editedUser = User(
                    name: _editedUser.name,
                    date: value,
                    height: _editedUser.height,
                    weight: _editedUser.weight,
                    timeslot: _editedUser.timeslot,
                    money: _editedUser.money,
                    gender: _editedUser.gender,
                    id: null,
                  );
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.height),
                    labelText: 'height',
                    hintText: 'in cm'),
                keyboardType: TextInputType.number,
                focusNode: _heightFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_weightFocusNode);
                },
                validator: (value) {
                  if(value.isEmpty){
                    // ignore: missing_return,
                    return 'Please provide  a value';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  _editedUser = User(
                    name: _editedUser.name,
                    date: _editedUser.date,
                    height: double.parse(value),
                    weight: _editedUser.weight,
                    timeslot: _editedUser.timeslot,
                    money: _editedUser.money,
                    gender: _editedUser.gender,
                    id: null,
                  );
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.speed_outlined),
                    labelText: 'Weight',
                    hintText: 'in Kg'),
                keyboardType: TextInputType.number,
                focusNode: _weightFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_genFocusNode);
                },
                validator: (value) {
                  if(value.isEmpty){
                    // ignore: missing_return,
                    return 'Please provide  a value';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  _editedUser = User(
                    name: _editedUser.name,
                    date: _editedUser.date,
                    height: _editedUser.height,
                    weight: double.parse(value),
                    timeslot: _editedUser.timeslot,
                    money: _editedUser.money,
                    gender: _editedUser.gender,
                    id: null,
                  );
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.help),
                    labelText: 'Gender',
                    hintText: 'M/F'
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                focusNode: _genFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_slotFocusNode);
                },
                validator: (value) {
                  if(value == 'M' || value == 'F'){
                    // ignore: missing_return,
                    return null;
                  }
                  else{
                    return 'Please put in M or F';
                  }
                },
                onSaved: (value) {
                  _editedUser = User(
                    name: _editedUser.name,
                    date: _editedUser.date,
                    height: _editedUser.height,
                    weight: _editedUser.weight,
                    timeslot: _editedUser.timeslot,
                    money: _editedUser.money,
                    gender: value,
                    id: null,
                  );
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.watch_later_outlined),
                    labelText: 'Time Slot',
                    hintText: 'hh:mm-hh:mm'
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.datetime,
                focusNode: _slotFocusNode,
                validator: (value) {
                  if(value.isEmpty){
                    // ignore: missing_return,
                    return 'Please enter time slot';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value) {
                  _editedUser = User(
                    name: _editedUser.name,
                    date: _editedUser.date,
                    height: _editedUser.height,
                    weight: _editedUser.weight,
                    timeslot: _editedUser.timeslot,
                    money: _editedUser.money,
                    gender: value,
                    id: null,
                  );
                },
              ),
              FloatingActionButton.extended(icon: Icon(Icons.save),
                label: Text('Save'),
                onPressed:_saveForm,)

            ],
          ),
        ),
      ),
    );
  }


}