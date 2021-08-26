
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/models/post_model.dart';
import 'package:unit_widget_test/services/http_request.dart';


void main () {

  test ("Posts are equal 100", () async {
  var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
  List <Post> posts = Network.parsePostList(response);
  expect(posts.length, equals(100));
  });

  test ("Posts are greater than zero", () async {
    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List <Post> posts = Network.parsePostList(response);
    expect(posts.length, greaterThanOrEqualTo(100));
  });


}

