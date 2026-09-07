void main() {
  print('Soal 1');
  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0) {
      print(" angka ganjil $i");
    }
  }
  print('');

  print('Soal 2');
  String star = " *";

  for (int j = 1; j <= 5; j++) {
    star += "*";
  }
  print(star);
  print('');

  print('Soal 3');
  int i = 1;
  while (i <= 4) {
    print("$i Komeng");
    i++;
  }
  print('');

  print('Soal 4');
  List<String> fruits = ["Apel", "Jeruk", "Mangga", "Anggur"];

  int index = 0;
  for (var fruit in fruits) {
    if (index < 2) {
      print(" Saya suka ${index}: $fruit");
      index++;
    }
  }
  print('');

  print('Soal 5');
  List<String> carts = ["Minyak", "Beras", "Gula", "Terigu", "Margarin"];

  carts.forEach((cart) {
    print(' Item ke-${index}: $cart');
    index++;
  });
  print('');
}
