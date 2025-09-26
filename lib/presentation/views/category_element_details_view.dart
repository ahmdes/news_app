import 'package:flutter/material.dart';
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
  String urlDate = widget.url;
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(
        "https://www.wired.com/story/this-humanoid-robot-is-showing-signs-of-generalized-learning/"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}
