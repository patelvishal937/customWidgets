import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class PdfWebview extends StatefulWidget {
//   const PdfWebview({super.key});

//   @override
//   State<PdfWebview> createState() => _PdfWebviewState();
// }

// class _PdfWebviewState extends State<PdfWebview> {
//   late final WebViewController controller;
//   @override
//   void initState() {
//     var yourlink = 'http://www.africau.edu/images/default/sample.pdf';
//     // var yourlink = 'https://calibre-ebook.com/downloads/demos/demo.docx';
//     controller = WebViewController()
//       ..loadRequest(Uri.parse(
//           'https://docs.google.com/gview?embedded=true&url=$yourlink'));
//     // TODO: implement initState
//     super.initState();
//   }
//   // 'https://docs.google.com/gview?embedded=true&url=$yourlink'
//   // 'https://docs.google.com/document/d/1Tgv7lWSoqEowo9Q6Vk76yZ9kPXXyerdlcZvFVcRAhAk/edit?addon_store$yourlink'

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {},
//           child: Center(
//               child: WebViewWidget(controller: controller)),
//         ),
//       ),
//     );
//   }
// }
 
class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(
          Uri.parse('https://pub.dev/packages/webview_flutter/install'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Flutter WebView'),
      ),
      // body: WebViewWidget(controller: controller),
      body: SfPdfViewer.network(
          'https://www.africau.edu/images/default/sample.pdf'),
    );
  }
}
