import 'package:book_tracker/screens/login_page.dart';
import 'package:book_tracker/widgets/input_decoration.dart';
import 'package:book_tracker/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('#f5f6f8'),
        child: Column(
          children: [
            const Spacer(),
            // ignore: prefer_const_constructors
            Text(
              "Book Tracker",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.black87),
            ),
            const SizedBox(height: 15),
            Text(
              'Read. Change. Yourself',
              style: TextStyle(
                color: Colors.blueGrey.shade700,
                fontSize: 29,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton.icon(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: HexColor('#ea99c1'),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                icon: const Icon(Icons.login_rounded),
                // ignore: prefer_const_constructors
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Sign In to get started'),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
