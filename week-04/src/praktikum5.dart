void main() {
  var record2 = (20, 30);
  print(tukar(record2));

  (String, int) mahasiswa;
  mahasiswa = ('Yofandra A.P', 2141720121);
  print(mahasiswa);

  var mahasiswa2 = ('Yofandra A.P', a: 2141720121, b: true, 'last');

  print(mahasiswa2.$1); 
  print(mahasiswa2.a); 
  print(mahasiswa2.b); 
  print(mahasiswa2.$2); 
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
