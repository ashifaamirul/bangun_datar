import 'package:get/get.dart';

class PersegiController extends GetxController {
  RxBool isiHitungLuas = true.obs;

  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung";
    isiHitungLuas.value = true;
  }

  void hitungKeliling() {
    int hitung = sisi + sisi + sisi + sisi;
    hasil.value = "Hasil perhitungan dari  $sisi+ $sisi +$sisi+$sisi = $hitung";
    isiHitungLuas.value = false;
  }
}
