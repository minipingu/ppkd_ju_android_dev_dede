/* 
  ini adalah tugas 1 dart yang saya buat, saya menulis beberapa variabel 
  */
void main() {
  String nama = 'Dede Nurhidayat';
  int umur = 32;
  double tinggiBadan = 1.75;
  bool statusAktif = true;
  List<String> daftarBukuFavorit = [
    'JavaScript: The Definitive Guide',
    'Minna no nihonggo',
  ];
  Map<String, String> informasiTambahan = {
    'alamat': "Koja, Jakarta Utara",
    'profesi': "Pelajar",
  };

  /// function ini digunakan untuk print semua variabel
  void tampilkanBiodata() {
    //disini kita print nama
    print(
      'Nama saya $nama, umur saya $umur, tinggi badan saya $tinggiBadan, status saya aktif = $statusAktif, daftar buku yang saya sukai : $daftarBukuFavorit, alamat dan profesi saya : $informasiTambahan',
    );
  }

  tampilkanBiodata();
}
