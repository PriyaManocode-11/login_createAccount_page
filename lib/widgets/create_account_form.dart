import 'package:book_tracker/screens/main_screen.dart';
import 'package:book_tracker/widgets/input_decoration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required TextEditingController emailTextController,
    @required TextEditingController passwordTextController,
  })  : _formKey = formKey,
        _emailTextController = emailTextController,
        _passwordTextController = passwordTextController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
              'Please enter a valide Email and Password with atleast 6 Charecters'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                return value.isEmpty ? 'Please add an email' : null;
              },
              controller: _emailTextController,
              decoration: buildInputMethod(
                  label: 'Enter Email', hintText: 'priyame@gmail.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                return value.isEmpty ? 'Enter Password' : null;
              },
              controller: _passwordTextController,
              obscureText: true,
              decoration:
                  buildInputMethod(label: 'Enter Password', hintText: ''),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: Colors.deepPurpleAccent,
                textStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreenPage(),
                          ));
                    });
                  });
                }
              },
              child: Text('Create Account'))
        ],
      ),
    );
  }
}
