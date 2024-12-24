```dart
class MyClass {
  int? _myInt;

  MyClass(this._myInt);

  int get myInt {
    if (_myInt == null) {
      throw Exception('myInt cannot be null');
    } 
    return _myInt!;
  }

  void set myInt(int value) {
    _myInt = value;
  }
}

void main() {
  MyClass obj1 = MyClass(10);
  print(obj1.myInt); // Output: 10

  try {
    MyClass obj2 = MyClass(null);
    print(obj2.myInt); // Throws an exception
  } catch (e) {
    print('Error: $e');
  }
  
  MyClass obj3 = MyClass(20);
  print(obj3.myInt); //Output:20
}
```