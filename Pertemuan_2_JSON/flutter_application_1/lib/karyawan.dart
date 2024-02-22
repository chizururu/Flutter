// Class Karyawan adalah kelas untuk menghandle data data karyawan
class Karyawan {
  final String nama;
  final int umur;
  final Alamat alamat; // Karena String tidak cocok maka dibuat class
  final List<String> hobi;

  Karyawan(
      {required this.nama,
      required this.umur,
      required this.alamat,
      required this.hobi});

  // Dynamic itu tipe data campuran
  factory Karyawan.fromJSON(Map<String, dynamic> json) {
    return Karyawan(
        nama: json["nama"],
        umur: json["umur"],
        alamat: Alamat.fromJSON(json["alamat"]),
        hobi: List<String>.from(json["hobi"]));
  }
}

// Inner Class
class Alamat {
  final String jalan;
  final String kota;
  final String provinsi;

  // Membuat konstruktor

  Alamat({required this.jalan, required this.kota, required this.provinsi});

  factory Alamat.fromJSON(Map<String, dynamic> json) {
    return Alamat(
      jalan: json["jalan"],
      kota: json["kota"],
      provinsi: json["provinsi"],
    );
  }
}
