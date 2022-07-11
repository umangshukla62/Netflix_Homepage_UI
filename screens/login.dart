import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_netflix_responsive_ui/screens/screne.dart';
import 'package:flutter_netflix_responsive_ui/widget/custom_app_bar.dart';
import 'package:path/path.dart';
import '../assets.dart';

Widget _appber = Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 128,
        ),
        Image.asset(
          Assets.netflixLogo1,
        ),
        SizedBox(
          width: 76,
        ),
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.edit_sharp,
              color: Colors.grey,
              size: 26,
            ))
      ],
    ));

class Login extends StatelessWidget {
  IconData iconn;
  String sting;
  Login({
    Key key,
  }) : super(key: key);

  @override
  Widget _Name(BuildContext context, Image iconn, String sting) {
    return Column(
      children: [
        Card(
          color: Colors.black,
          elevation: 100,
          borderOnForeground: false,
          child: IconButton(
            onPressed: (() {
              Navigator.of(context).pushReplacementNamed('login');
            }),
            icon: iconn,
            iconSize: 100,
            
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          sting,
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(50, 120, 50, 200),
          child: Container(
              width: 400,
              height: 500,
              alignment: Alignment.center,
              child: Column(children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 50,
                  child: Text("Who's Watching?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        _Name(context, Image.asset(Assets.hii), 'Alex'),
                        SizedBox(
                          height: 40,
                        ),
                        _Name(context, Image.asset(Assets.hii), 'Sam')
                      ],
                    ),
                    Column(
                      children: [
                        _Name(context, Image.asset(Assets.hii), 'John'),
                        SizedBox(
                          height: 40,
                        ),
                        _Name(context, Image.asset(Assets.hii), 'Fin')
                      ],
                    )
                  ],
                )
              ])),
        ),
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size(0, 50),
          child: _appber,
        ),
      ),
    );
  }
}
