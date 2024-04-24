// https://newsapi.org/v2/everything?q=apple&from=2024-04-23&to=2024-04-23&sortBy=popularity&apiKey=3838580c3d7e4b1ba49b10451bf60a1c
import 'dart:convert';

import 'package:http/http.dart';

class NewsFetch {
  static newsFetch() async {
    Response response = await get(
      Uri.parse(
          "https://newsapi.org/v2/everything?q=apple&from=2024-04-23&to=2024-04-23&sortBy=popularity&apiKey=3838580c3d7e4b1ba49b10451bf60a1c"),
    );
    Map bodyData = jsonDecode(response.body);
    print(bodyData);
  }
}
