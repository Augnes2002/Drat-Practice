import 'dart:io';

void main() {
  String name = "Raj";
  printName();        // Calls the function with no argument.
  printName(name);    // Calls the function with a name.
}

void printName([String? name]) {
  if (name == null) {
    print("Hello");
  } else {
    print("Hello " + name);
  }
}
