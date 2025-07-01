import "dart:io";

void greet(String name) {
  print("Its a pleasure to meet you, $name!");
}

int retirement(int age, {int retirementAge = 60}) {
  return retirementAge - age;
}

String hype(String activity) => "$activity is awsome!";

void main() {
  print(" Welcome! What's your name, Friend?");
  String? name = stdin.readLineSync();

  greet(name!);

  print("By the way , How old are you?");
  int age = int.parse(stdin.readLineSync()!);
  int yearLeft = retirement(age);
  print("Umm... You have $yearLeft years left for your retirement.");

  print("What's your favorite hobby?");
  String? hobby = stdin.readLineSync();

  String hypeMessage = hype(hobby!);
  for (int i = 0; i < 3; i++) {
    print(hypeMessage);
  }

  print("Running your costom command...");
  Function costomAction = () {
    print("Hello from an anonymous function!");
  };

  costomAction();
}
