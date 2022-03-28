import 'dart:core';
import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:shopingdark/screens/loginscreen.dart';
import 'package:shopingdark/services/auth.dart';

import '../constants.dart';
import '../widgets/custom_textfield.dart';
import 'package:flutter/services.dart';

class Sinupscreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'Sinupscreen';
 String _email, _password;
  final _auth = Auth();

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;



    return Scaffold(
      backgroundColor: KMaincolor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Container(
                height: MediaQuery.of(context).size.height * .2,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/icones/buy.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        '    Shop Fi Dark',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .1,
            ),
            Customtextfield(
              onclick: (value) {      _email = value;   },
              hint: 'Entre your Name',
              icon: Icons.perm_identity,
            ),
            SizedBox(
              height: height * .02,
            ),
            Customtextfield(
              onclick: (value) {
                _email = value;
              },
              hint: 'Entre your email',
              icon: Icons.email,
            ),
            SizedBox(
              height: height * .02,
            ),
            Customtextfield(
              onclick: (value) {
                _password = value;
              },
              hint: 'Entre your password',
              icon: Icons.lock,
            ),
            SizedBox(
              height: height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.black,
                onPressed: () async {
                  if (_globalKey.currentState.validate()) {

                    //do something
                    _globalKey.currentState?.save();
                    print(_email);
                    print(_password);
                 final authResult= await  _auth.signUp(_email, _password);
                 print(authResult.user.uid);
                    validator:
                    (value) {
                      return (value);
                    };
                  }
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you have an account !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Loginscreen.id);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
