import 'dart:async';

class Counter {
  static StreamController controller = StreamController();
  static Stream get counterstream => controller.stream;
  static Sink get countersink => controller.sink;

  //static Sink get countersink => controller.sink;

  static set setdata(int data) {
    countersink.add(data);
  }
}
