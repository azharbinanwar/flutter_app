import 'package:flutter/material.dart';
import 'package:flutter_app/bloc_and_generic/helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final Widget _child;
  final Widget title;

  WebViewPage({
    super.key,
    this.title = const SizedBox.shrink(),
    required final String url,
    final bool showProgress = true,
    final Map<String, String> headers = const {},
  }) : _child = _InAppWebViewOnly(
          url: url,
          headers: headers,
          showProgress: showProgress,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      body: _child,
    );
  }
}

class InAppWebView extends StatelessWidget {
  final String url;
  final Map<String, String> headers;
  final bool showProgress;

  const InAppWebView({
    super.key,
    required this.url,
    this.headers = const {},
    this.showProgress = false,
  });

  @override
  Widget build(BuildContext context) {
    return _InAppWebViewOnly(
      url: url,
      headers: headers,
      showProgress: showProgress,
    );
  }
}

class _InAppWebViewOnly extends StatefulWidget {
  final String url;
  final Map<String, String> headers;
  final bool showProgress;

  const _InAppWebViewOnly({
    required this.url,
    this.headers = const {},
    final bool? showProgress,
  }) : showProgress = showProgress ?? true;

  @override
  State<_InAppWebViewOnly> createState() => _InAppWebViewOnlyState();
}

class _InAppWebViewOnlyState extends State<_InAppWebViewOnly> {
  late WebViewController _controller;
  final Handler<num> _progressHelper = Handler<num>(0.0);

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(context.scaffoldBackgroundColor)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: _progressHelper.update,
          onPageStarted: (String url) {
            /// override the default behavior of the web-view if needed
          },
          onPageFinished: (String url) {
            /// override the default behavior of the web-view if needed
          },
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(
        Uri.parse(widget.url),
        headers: widget.headers,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<Handler<num>, num>(
          bloc: _progressHelper,
          builder: (context, state) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: state == 100 ? 0 : 1.5,
            child: LinearProgressIndicator(minHeight: 1.5, value: state / 100),
          ),
        ),
        Expanded(
          child: WebViewWidget(
            /// context throws an exception in [initState()] because of it's mounted state
            controller: _controller..setBackgroundColor(Colors.white),
          ),
        ),
      ],
    );
  }
}
