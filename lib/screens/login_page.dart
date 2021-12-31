import 'package:book_tracker/widgets/create_account_form.dart';
import 'package:book_tracker/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('b9c2d1'),
              )),
          Text(
            'Sign In',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: isCreateAccountClicked != true
                    ? LoginForm(
                        formKey: _formKey,
                        emailTextController: _emailTextController,
                        passwordTextController: _passwordTextController)
                    : CreateAccountForm(
                        formKey: _formKey,
                        emailTextController: _emailTextController,
                        passwordTextController: _passwordTextController),
              ),
              TextButton.icon(
                  icon: Icon(Icons.portrait_rounded),
                  style: TextButton.styleFrom(
                    backgroundColor: HexColor('#a690d0'),
                    primary: Colors.white,
                    textStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (!isCreateAccountClicked) {
                        isCreateAccountClicked = true;
                      } else {
                        isCreateAccountClicked = false;
                      }
                    });
                  },
                  label: Text(isCreateAccountClicked
                      ? 'Alraedy Have an Account'
                      : 'Create Account')),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('b9c2d1'),
              ))
        ],
      ),
    );
  }
}
