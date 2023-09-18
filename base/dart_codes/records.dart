void main(List<String> args) {
  var record1 = (5, 8);
  (int, int) record2 = (5, 3);
  Points record3 = (5, 4);
  var result = add(record3);
  print(result);
}

int add((int, int) r) {
  return r.$1 + r.$2;
}

typedef Points = (int, int); //Veri tipi tanımlama. Kısa yol gibi.
