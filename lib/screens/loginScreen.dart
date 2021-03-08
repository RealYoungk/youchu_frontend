import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/loginBackgroundLogo.png',
                      width: MediaQuery.of(context).size.width,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 50.0),
                        Image.asset('assets/loginLogo.png'),
                        SizedBox(height: 20.0),
                        Image.asset('assets/loginLogoText.png'),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller: emailController,
                                maxLength: 40,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.7),
                                  labelText: '이메일을 입력하세요.',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey[350])),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextFormField(
                                controller: passwordController,
                                maxLength: 40,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.7),
                                  labelText: '비밀번호를 입력하세요.',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey[350])),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {
                                        if (emailController.text ==
                                                'realyoungk' &&
                                            passwordController.text == '5394') {
                                          Navigator.pushNamed(
                                              context, '/route');
                                        } else {
                                          showSnackBar(context);
                                        }
                                      },
                                      child: Text(
                                        '로그인',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(
                                          const EdgeInsets.fromLTRB(
                                              0, 15, 0, 15),
                                        ),
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                2.0),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                (states) => Colors.red),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    '다른 계정으로 로그인',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/ggButton.png',
                                        scale: 1.0,
                                      ),
                                      SizedBox(height: 5.0),
                                      Text('구글'),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/fbButton.png',
                                        scale: 1.0,
                                      ),
                                      SizedBox(height: 5.0),
                                      Text('페이스북'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                '계정이 없으신가요?',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '회원가입하기',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      '로그인 정보를 다시 확인하세요.',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.red[300],
  ));
}
