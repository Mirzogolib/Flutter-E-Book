import 'package:fluro/fluro.dart';
import 'package:volleyball/pages/book.dart';
import 'package:volleyball/pages/home.dart';

class Application {
  static FluroRouter router;
}

class AppRoutes {
  static String home = '/';
  static String book = '/book';

  static void defineRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(book, handler: bookHandler);
  }
}

final homeHandler = Handler(handlerFunc: (_, __) => HomeController());
final bookHandler = Handler(
    handlerFunc: (_, Map<String, dynamic> params) =>
        BookController.controllerWithProvider(int.parse(params["id"][0])));
