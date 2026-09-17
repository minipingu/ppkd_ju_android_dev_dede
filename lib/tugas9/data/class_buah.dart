class Berbuah {
  final String namaBuah;
  final String kategoriBuah;
  final int hargaBuah;

  Berbuah({
    required this.namaBuah,
    required this.kategoriBuah,
    required this.hargaBuah,
  });

  factory Berbuah.fromJson(Map<String, dynamic> json) {
    return Berbuah(
      namaBuah: json['namaBuah'],
      kategoriBuah: json['kategoriBuah'],
      hargaBuah: json['hargaBuah'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'namaBuah': namaBuah,
      'kategoriBuah': kategoriBuah,
      'hargaBuah': hargaBuah,
    };
  }
}
