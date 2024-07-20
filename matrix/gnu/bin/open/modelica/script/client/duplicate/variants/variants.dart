class ClassName {
  late String name;
  late String description;
  late int local;  
}

void main() {
  ClassName instance = ClassName();
  instance.name = 'John Doe';
  instance.description = 'This is a sample class.';
  instance.local = 10;

  print('Name: ${instance.name}');
  print('Description: ${instance.description}');
  print('Local: ${instance.local}');
}
