import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredcontainer;
  const ContentHeader({Key key, this.featuredcontainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(featuredcontainer.imageUrl),
                    fit: BoxFit.cover))),
        Container(
            height: 500,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter))),
        Positioned(
          bottom: 120,
          width: 250,
          child: Image.asset(featuredcontainer.titleImageUrl),
        ),
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Card(
                  shadowColor: Colors.transparent,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 30,
                    onPressed: (() => {}),
                    icon: Icon(Icons.add),
                  ),
                  color: Colors.transparent,
                ),
                Container(
                  child: Text(
                    'List',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]),
              Container(
                  width: 135,
                  margin: EdgeInsets.fromLTRB(10, 40, 10, 40),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 32,
                      ),
                      label: Text(
                        'Play',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  )),
              Column(children: [
                Card(
                  shadowColor: Colors.transparent,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 30,
                    onPressed: (() => {}),
                    icon: Icon(Icons.info_outline),
                  ),
                  color: Colors.transparent,
                ),
                Container(
                  child: Text(
                    'Info',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ])
            ],
          ),
          left: 0,
          bottom: 0,
          right: 0,
        )
      ],
    );
  }
}
