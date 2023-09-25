void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Yofandra A.P';
  mhs1['nim'] = '2141720121';

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['sixth'] = 'Yofandra A.P';
  gifts['seventh'] = '2141720121';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Yofandra A.P';
  mhs2[2] = '2141720121';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[25] = 'Yofandra A.P';
  nobleGases[30] = '2141720121';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
