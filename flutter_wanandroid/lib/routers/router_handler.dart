import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/views/app_page.dart';
import 'package:flutter_wanandroid/views/coin/coin_rank_page.dart';
import 'package:flutter_wanandroid/views/coin/user_coin_page.dart';
import 'package:flutter_wanandroid/views/collect/collect_page.dart';
import 'package:flutter_wanandroid/views/home/common/common_web_page.dart';
import 'package:flutter_wanandroid/views/knowledge/knowledge_detail_page.dart';
import 'package:flutter_wanandroid/views/login/login_page.dart';
import 'package:flutter_wanandroid/views/login/register_page.dart';
import 'package:flutter_wanandroid/views/questionanswer/question_answer_page.dart';
import 'package:flutter_wanandroid/views/search/search_page.dart';
import 'package:flutter_wanandroid/views/setting/about_page.dart';
import 'package:flutter_wanandroid/views/setting/setting_page.dart';
import 'package:flutter_wanandroid/views/share/share_article_page.dart';
import 'package:flutter_wanandroid/views/todo/todo_page.dart';
import 'package:flutter_wanandroid/views/user/user_center_page.dart';
import 'package:flutter_wanandroid/views/web_page/web_view_page.dart';


// app的首页
var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new AppPage();
  },
);

//登录页
var loginHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new LoginPage();
  },
);
// 注册页
var registerHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new RegisterPage();
  },
);

// webview 页面
var webViewPageHand = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String routePageJson = params['routePageJson']?.first;
      return new WebViewPage(routePageData: routePageJson);
    });

//知识体系下的文章
var knowledgeDetailHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String type = params['type']?.first; //页面跳转类型
    String author = params['author']?.first; //更加 作者名称显示作者文章
    String articleJson = params['articleJson']?.first;
    String knowledgeJson = params['knowledgeJson']?.first;
    return new KnowledegDetailPage(type:type,author:author,articleJson: articleJson,knowledgeJson: knowledgeJson,);
  },
);

//用户中心
var userCenterHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String type = params['type']?.first; //页面跳转类型
    String authorId = params['authorId']?.first; //用户 id
    String authorName = params['authorName']?.first;
    return new UserCenterPage(type: type,authorId: authorId,authorName: authorName);
  },
);

//收藏
var collectPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new CollectPage();
  },
);

//常用网站
var commonWebPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new CommonWebPage();
  },
);

//分享文章
var shareArticlePageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new ShareArticlePage();
  },
);

//积分排行榜
var coinRankPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new CoinRankPage();
  },
);

//我的积分
var userCoinPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new UserCoinPage();
  },
);

//设置
var settingPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new SettingPage();
  },
);

//设置
var aboutPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new AboutPage();
  },
);

//搜索
var searchPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String routePageJson = params['routePageJson']?.first;
    return new SearchPage(routePageData: routePageJson);
  },
);

//问答
var questionAnswerPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new QuestionAnswerPage();
  },
);

//TODO页面
var todoPageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new TodoPage();
  },
);