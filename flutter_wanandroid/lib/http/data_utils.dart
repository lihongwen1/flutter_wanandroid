import 'package:dio/dio.dart';
/// Created with Android Studio.
/// User: maoqitian
/// Date: 2019-11-03
/// email: maoqitian068@163.com
/// des:  数据获取帮助类


import 'package:flutter_wanandroid/api/Api.dart';
import 'package:flutter_wanandroid/http/http_utils.dart';
import 'package:flutter_wanandroid/model/article/article_base_data.dart';
import 'package:flutter_wanandroid/model/article/article_top_base_data.dart';
import 'package:flutter_wanandroid/model/banner/banner_base_data.dart';
import 'package:flutter_wanandroid/model/article/article_data.dart';
import 'package:flutter_wanandroid/model/article/article_list_data.dart';
import 'package:flutter_wanandroid/model/banner/banner_data.dart';
import 'package:flutter_wanandroid/model/login/Login_base_data.dart';
import 'package:flutter_wanandroid/model/login/login_base_data.dart' as prefix0;
import 'package:flutter_wanandroid/model/login/login_data.dart';



class DataUtils{


  //获取首页banner 数据
  // 数据手动解析 没有使用 JsonSerializable
  static Future<List<BannerData>> getBannerData() async{
    Response response = await HttpUtils.get(Api.BANNER_JSON);
    return BannerBaseData.fromJson(response.data).data;
  }

  // 首页文章列表
  //方法：GET
  //参数：页码，拼接在连接中，从0开始。
  static Future<ArticleListData> getArticleData(int pageNum) async{
    String path = '/article/list/$pageNum/json';
    Response response = await HttpUtils.get(Api.BASE_URL+path);
    ArticleBaseData articleBaseData = ArticleBaseData.fromJson(response.data);
    return articleBaseData.data;
  }

  //置顶文章
  static Future<List<ArticleData>> getArticleTopData() async{
    Response response = await HttpUtils.get(Api.ARTICLE_TOP);
    return ArticleTopBaseData.fromJson(response.data).data;
  }


  //登录
  static Future<LoginData> getLoginData(String username,String password) async{
    FormData formData =FormData.fromMap({"username": username, "password": password});
    Response response = await HttpUtils.post(Api.LOGIN_JSON,formData);
    return LoginBaseData.fromJson(response.data).data;
  }

  //注册
  static Future<LoginData> getRegisterData(String username,String password,String repassword) async{
    FormData formData =FormData.fromMap({"username": username, "password": password,"repassword": repassword});
    Response response = await HttpUtils.post(Api.REGISTER_JSON,formData);
    return LoginBaseData.fromJson(response.data).data;
  }

}
