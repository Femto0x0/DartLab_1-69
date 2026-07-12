mixin Loggable {
  void log(String msg) {
    print('[${DateTime.now()}] $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log('PUSH: $element | Current Stack: $_storage');
  }

  T pop() {
    if (_storage.isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    final element = _storage.removeLast();
    log('POP: $element | Current Stack: $_storage');
    return element;
  }

  bool get isEmpty => _storage.isEmpty;
}

void main() {
  var intStack = Stack<int>();
  intStack.push(10);
  intStack.push(20);
  intStack.pop();

  var stringStack = Stack<String>();
  stringStack.push('Dart');
  stringStack.push('Flutter');
  stringStack.pop();
}