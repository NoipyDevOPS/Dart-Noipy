import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';


@Component(
  selector: 'my-app',
  template: '<h1>Hello {{name}}</h1>',
)
class AppComponent {
  var name = 'Angular';
}
