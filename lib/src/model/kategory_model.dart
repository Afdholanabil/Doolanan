class KategoryModel {
  final int idK;
  final String namaK;
  final String gambarK;

  KategoryModel({
    required this.idK,
    required this.namaK,
    required this.gambarK,
  });
}

  List<KategoryModel> listKategory = [
    KategoryModel(
      idK: 1, 
      namaK: "RACING", 
      gambarK: "semuaAsset/gambar/kRacing.png"),
    KategoryModel(
      idK: 2, 
      namaK: "OPEN WORLD", 
      gambarK: "semuaAsset/gambar/kOpenWorld.png"),
    
    KategoryModel(
      idK: 3, 
      namaK: "FIGHTING", 
      gambarK: "semuaAsset/gambar/kFighting.png"),
  ];

