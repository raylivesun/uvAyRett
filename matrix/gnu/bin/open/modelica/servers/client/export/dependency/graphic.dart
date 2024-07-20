import 'dart:mirrors';

class Graphic<T> extends Object implements ObjectMirror {
  @override
  delegate(Invocation invocation) {
    //  implement delegate
    throw UnimplementedError();
  }

  @override
  InstanceMirror getField(Symbol fieldName) {
    //  implement getField
    throw UnimplementedError();
  }

  @override
  InstanceMirror invoke(Symbol memberName, List positionalArguments,
      [Map<Symbol, dynamic> namedArguments = const <Symbol, dynamic>{}]) {
    //  implement invoke
    throw UnimplementedError();
  }

  @override
  InstanceMirror setField(Symbol fieldName, value) {
    //  implement setField
    throw UnimplementedError();
  }
}

class Rectangle extends Graphic<Rectangle> {
  late double width;
  late double height;

  Rectangle(this.width, this.height);

  @override
  String toString() {
    return 'Rectangle(width: $width, height: $height)';
  }  

}


void main() {
  Rectangle rectangle = Rectangle(5.0, 3.0);
  print(rectangle); // Rectangle(width: 5.0, height: 3.0)
}

