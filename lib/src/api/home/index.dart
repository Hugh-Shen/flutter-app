import 'dart:async';
import 'dart:convert';
import 'package:app/src/api/home/model/index.dart';
import 'package:http/http.dart' as http;

const HOME_URL = 'http:// www.devio.org/io/flutter_app/json/home_page.json';

class HomeRequest {
  static Future<HomeModel> fetch() async {
    final res = await http.get(HOME_URL); // 获取请求数据
    if (res.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder(); // 解决中文可能出现的乱码问题
      var result = json.decode(utf8decoder.convert(res.bodyBytes));
      return HomeModel.fromJson(result);
    } else {
      throw Exception('response error to  load home');
    }
  }
}
