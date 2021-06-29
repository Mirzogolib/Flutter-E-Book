import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_pedagogikasi/theme/style.dart';

class BookController extends StatefulWidget {
  final int type;
  BookController(this.type, {Key key}) : super(key: key);

  static Widget controllerWithProvider(int id) => BookController(id);

  static Route route(int id) => CupertinoPageRoute(
        builder: (_) => controllerWithProvider(id),
      );

  @override
  _BookControllerState createState() => _BookControllerState();
}

class _BookControllerState extends State<BookController> {
  bool _isLoading = true;
  PDFDocument document;
  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/part${widget.type}.pdf');
    setState(() => _isLoading = false);
  }

  Widget navigationBar(BuildContext context) => CupertinoNavigationBar(
        border: null,
        backgroundColor: Style.colors.white,
        middle: Text(
          'Jismoniy tarbiya va sport pedagogikasi',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: CupertinoButton(
          minSize: 0,
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.of(context).maybePop(),
          child: Icon(
            Icons.arrow_back,
            color: Style.colors.black,
            size: 32.0,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navigationBar(context),
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
                tooltip: PDFViewerTooltip(pick: 'Sahifani tanlang'),
              ),
      ),
    );
  }
}
