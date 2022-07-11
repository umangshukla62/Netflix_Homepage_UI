import 'package:flutter/material.dart';

import 'package:flutter_netflix_responsive_ui/data/data.dart';

import 'package:flutter_netflix_responsive_ui/widget/conentheader.dart';
import 'package:flutter_netflix_responsive_ui/widget/custom_app_bar.dart';

import '../widget/contentlist.dart';
import '../widget/previews.dart';

class Screen extends StatefulWidget {
  const Screen({
    Key key,
  }) : super(key: key);
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.cast,
          color: Colors.grey,
        ),
        onPressed: () => print('Cast'),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50),
        child: cusappbar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ContentHeader(
              featuredcontainer: sintelContent,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
                child: Previews(title: 'Previews', contentList: previews)),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              contentList: myList,
              Title: 'Mylist',
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              contentList: originals,
              isOriginals: true,
              Title: 'Netflix Originals',
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              contentList: trending,
              Title: 'Trending',
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 11,
          selectedFontSize: 11,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.grey,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(
                icon: Icon(Icons.queue_play_next), label: 'Coming Soon'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
          ]),
    );
  }
}
