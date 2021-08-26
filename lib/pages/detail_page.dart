import 'package:flutter/material.dart';
import 'package:unit_widget_test/models/post_model.dart';
import 'package:unit_widget_test/services/http_request.dart';
class DetailPage extends StatefulWidget {
  static final String id ="detail_page";
  int uid;
  DetailPage({this.uid, Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLoading = false;
  Post post = new Post(title: "", body: "");

  _callApiPost(int id) async {
    setState(() {
      isLoading = true;
    });
    var response = await Network.GET(Network.API_LIST + '/${widget.uid}', Network.paramsEmpty());
    setState(() {
      if (response != null) {
        post = Network.parsePost(response);
      }
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _callApiPost(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(post.title.toUpperCase(), style: TextStyle(color: Colors.deepPurple),),
            SizedBox(height: 10,),
            Text(post.body, style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
