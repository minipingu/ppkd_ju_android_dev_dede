void main() {
  int UTS = 80;
  int UAS = 80;
  double kehadiran = 70; // kehadirannya kurang dari 75, kehadiran harus 75 keatas, maka output harusnya tidak lulus

  double nilaiAkhir = (UTS + UAS) / 2;

  String status =
      (UTS >= 60 || UAS >= 60) && (nilaiAkhir >= 70 && kehadiran >= 75)
      ? "Lulus"
      : "Tidak Lulus";

  print(status);
}
