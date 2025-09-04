import 'package:flutter/material.dart';
import 'package:news_app_flutter/models/news_tile_model.dart';

import 'news_list_view.dart';

class NewsTileView extends StatelessWidget {
  const NewsTileView({super.key});
  final List<NewsTileModel> newsTileModel = const [
    NewsTileModel(
        image: "https://regumsoft.com/assets/images/web-development.jpg",
        title:
            "This is advertise about working as a flutter developer , if you want a jop , send your CV.",
        description:
            "our company makes an advertisement for flutter developers , if you want to get the jop , send your CV for this page"),
    NewsTileModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl8Tvuu5AStZ-C243K-WcDzi6sk6T1PIOOp4FPeiAhamNKx1ZLoaaX816St7aSTMHWqhc&usqp=CAU",
        title:
            "This is advertise about working as a flutter developer , if you want a jop , send your CV.",
        description:
            "our company makes an advertisement for flutter developers , if you want to get the jop , send your CV for this page"),
    NewsTileModel(
        image:
            "https://media.licdn.com/dms/image/sync/v2/D5627AQGB1-YE1MivNA/articleshare-shrink_800/articleshare-shrink_800/0/1733817774819?e=2147483647&v=beta&t=5aknRsdfTc6ajidaOXoBrwxyR8GAk84nixw22lmJ_Us",
        title:
            "This is advertise about working as a flutter developer , if you want a jop , send your CV.",
        description:
            "our company makes an advertisement for flutter developers , if you want to get the jop , send your CV for this page"),
    NewsTileModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC6a-tntbTd6I0NMHYAG926hYME_lk9h6U-9WDkAe7iJN5YdGx5stHQM0eIjiVSBGU8m4&usqp=CAU",
        title:
            "This is advertise about working as a flutter developer , if you want a jop , send your CV.",
        description:
            "our company makes an advertisement for flutter developers , if you want to get the jop , send your CV for this page"),
    NewsTileModel(
        image:
            "https://cdn.prod.website-files.com/63a58f5eea7e9c9396453f5b/654e1358b83cf113ff7b3149_pexels-christina-morillo-1181675.webp",
        title:
            "This is advertise about working as a flutter developer , if you want a jop , send your CV.",
        description:
            "our company makes an advertisement for flutter developers , if you want to get the jop , send your CV for this page"),
  ];
  @override
  Widget build(BuildContext context) {
    return NewsListView(newsTileModel: newsTileModel);
  }
}

