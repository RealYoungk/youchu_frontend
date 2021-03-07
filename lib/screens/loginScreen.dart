import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Image.asset('assets/loginBackgroundLogo.png'),
                Column(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Image.asset('assets/loginLogo.png'),
                    SizedBox(height: 20.0),
                    Image.asset('assets/loginLogoText.png'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50.0, 40.0, 50.0, 0),
                      child: TextFormField(
                        maxLength: 40,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.7),
                          labelText: '이메일을 입력하세요.',
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[350])),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
