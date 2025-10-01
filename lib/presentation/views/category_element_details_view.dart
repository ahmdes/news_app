import 'package:flutter/material.dart';
import 'package:news_app_flutter/behaviour/core/resources/colors_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CategoryElementDetailsView extends StatefulWidget {
  const CategoryElementDetailsView({super.key, required this.url});
  final String url;
  @override
  State<CategoryElementDetailsView> createState() =>
      _CategoryElementDetailsViewState();
}

class _CategoryElementDetailsViewState
    extends State<CategoryElementDetailsView> {
  late WebViewController controller;
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            // When page finished loading
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: ColorsManager.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )
            : WebViewWidget(controller: controller),
      ),
    );
  }
}
