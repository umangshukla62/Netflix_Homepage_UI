import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';

class ContentList extends StatelessWidget {
  final String Title;
  final List<Content> contentList;
  final bool isOriginals;

  const ContentList(
      {Key key, this.Title, this.contentList, this.isOriginals = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            Title,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: (isOriginals ? 500 : 220),
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 12),
            scrollDirection: Axis.horizontal,
            itemCount: contentList.length,
            itemBuilder: (context, index) {
              final Content content = contentList[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  height: isOriginals ? 400 : 200,
                  width: isOriginals ? 280 : 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(content.imageUrl),
                    fit: BoxFit.cover,
                  )),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
