import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/screens/login.dart';

class cusappbar extends StatelessWidget {
  const cusappbar({Key key, this.scrolloffset = 0.0}) : super(key: key);
  final double scrolloffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.black,
      child: SafeArea(
          child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Appbarbutton(title: 'TV Shows', ontap: () => print('TV Shows')),
              _Appbarbutton(title: 'Movies', ontap: () => print('Movies')),
              _Appbarbutton(title: 'My List', ontap: () => print('My List')),
            ],
          )),
          Container(
            width: 30,
            child: IconButton(
                iconSize: 22,
                padding: EdgeInsets.only(
                  left: 3,
                  top: 1,
                  bottom: 3,
                ),
                onPressed: (() => {Navigator.of(context).pushNamed('l')}),
                icon: Image.asset(
                  Assets.hii,
                )),
          )
        ],
      )),
    );
  }
}

class _Appbarbutton extends StatelessWidget {
  final String title;
  final Function ontap;
  const _Appbarbutton({Key key, @required this.title, @required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap,
      child: Text(title,
          style: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
