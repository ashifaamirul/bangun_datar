import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasilluas = "".obs;
  final hasilkel = "".obs;

  void hitungLuas(){
    int hitung = sisi*sisi;
    hasilluas.value="Hasil perhitungan dari $sisi x $sisi = $hitung";
  }

  void hitungKeliling(){
    int hitung = sisi+sisi+sisi+sisi;
    hasilkel.value="Hasil perhitungan dari  $sisi+ $sisi +$sisi+$sisi = $hitung";
  }
}