```dart
class MyClass {
  int? _myInt;

  MyClass(this._myInt); // Constructor

  int get myInt => _myInt ?? 0; // Getter with default value

  void set myInt(int value) {
    _myInt = value;
  }
}

void main() {
  MyClass obj1 = MyClass(10);
  print(obj1.myInt); // Output: 10

  MyClass obj2 = MyClass(null); //Passing null value
  print(obj2.myInt); // Output: 0
  obj2.myInt = 20;
  print(obj2.myInt); //Output:20
}
```