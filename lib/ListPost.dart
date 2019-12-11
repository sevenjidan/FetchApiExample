
import 'package:fetchapiflutter/model/post.dart';
import 'package:flutter/material.dart';

class ShowListUI extends StatelessWidget {
  List listPost;

  ShowListUI(this.listPost);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listPost == null ? 0 : listPost.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPost(listPost, index)));
                },
                title: Text(
                  listPost[index].title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                subtitle: Text(
                  listPost[index].body,
                  maxLines: 2,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
        });
  }
}

class DetailPost extends StatelessWidget {
  List listData;
  int index;

  DetailPost(this.listData, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Post")
      ),
      body: ListView(
        children: <Widget>[Text(listData[0].title), Text(listData[0].body)],
      ),
    );
  }
}
