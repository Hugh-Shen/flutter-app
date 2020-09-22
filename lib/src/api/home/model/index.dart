import 'package:app/src/api/home/model/activityModel.dart';
import 'package:app/src/api/home/model/commonModel.dart';
import 'package:app/src/api/home/model/configModel.dart';
import 'package:app/src/api/home/model/gridNavModel.dart';

class HomeModel {
  final ConfigModel config;
  final List<CommonModel> bannerList;
  final List<CommonModel> localNavList;
  final List<CommonModel> subNavList;
  final GridNavModel gridNav;
  final ActivityModel salesBox;

  HomeModel(
      {this.config,
      this.bannerList,
      this.localNavList,
      this.subNavList,
      this.gridNav,
      this.salesBox});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    var localNavListJson = json['localNavList'] as List;
    List<CommonModel> localNavList =
        localNavListJson.map((item) => CommonModel.fromJson(item)).toList();

    var bannerListJson = json['bannerList'] as List;
    List<CommonModel> bannerList =
        bannerListJson.map((item) => CommonModel.fromJson(item)).toList();

    var subNavListJson = json['subNavList'] as List;
    List<CommonModel> subNavList =
        subNavListJson.map((item) => CommonModel.fromJson(item)).toList();

    return HomeModel(
        localNavList: localNavList,
        bannerList: bannerList,
        subNavList: subNavList,
        config: ConfigModel.fromJson(json['config']),
        gridNav: GridNavModel.fromJson(json['gridNav']),
        salesBox: ActivityModel.fromJson(json['salesBox']));
  }
}
