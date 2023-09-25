void main() {
  final list = List<Object?>.filled(5,null);
  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);
  print(list[1]);

  list[1] = 'Yofandra';
  list[2] = 2141720121;
  assert(list[1] == 'Yofandra');
  print(list[1]);
  print(list[2]);
  print(list);
}
