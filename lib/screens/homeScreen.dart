import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            maxRadius: 30.0,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'realyoungk',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text('#축구 #손흥민 #epl'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.center,
                          image: NetworkImage(
                            'https://img.youtube.com/vi/c1PNEa_eiIM/0.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '코딩셰프 조금매운맛 Flutter',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('코딩셰프'),
                      SizedBox(width: 5.0),
                      Text('|'),
                      SizedBox(width: 5.0),
                      Text('2021.03.08'),
                      SizedBox(width: 5.0),
                      Text('|'),
                      SizedBox(width: 5.0),
                      Text('1초전'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        child: Icon(
                          Icons.favorite,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text('57'),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.comment,
                        size: 30.0,
                      ),
                      SizedBox(width: 5.0),
                      Text('10'),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.share,
                        size: 30.0,
                      ),
                      SizedBox(width: 5.0),
                      Text('3'),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text('저장',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            maxRadius: 30.0,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'realyoungk',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text('#축구 #손흥민 #epl'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.center,
                          image: NetworkImage(
                            'https://img.youtube.com/vi/c1PNEa_eiIM/0.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '코딩셰프 조금매운맛 Flutter',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('코딩셰프'),
                      SizedBox(width: 5.0),
                      Text('|'),
                      SizedBox(width: 5.0),
                      Text('2021.03.08'),
                      SizedBox(width: 5.0),
                      Text('|'),
                      SizedBox(width: 5.0),
                      Text('1초전'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        child: Icon(
                          Icons.favorite,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text('57'),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.comment,
                        size: 30.0,
                      ),
                      SizedBox(width: 5.0),
                      Text('10'),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.share,
                        size: 30.0,
                      ),
                      SizedBox(width: 5.0),
                      Text('3'),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text('저장',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
