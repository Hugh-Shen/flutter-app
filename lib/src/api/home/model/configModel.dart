class ConfigModel {
  final String searchUrl;
  ConfigModel({this.searchUrl}); // 实例对象

  /* 工厂方法 */
  factory ConfigModel.fromJson(Map<String, dynamic> json) {
    return ConfigModel(searchUrl: json['searchUrl']);
  }
}
