class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double totalHargaTanpaDiskon() {
    return jumlah * harga;
  }

  double totalHargaSetelahDiskon() {
    double tanpaDiskon = totalHargaTanpaDiskon();
    double dapatDiskon = tanpaDiskon * (diskon / 100);
    return tanpaDiskon - dapatDiskon;
  }

  void tampilkanInformasiProduk() {
    print('INFORMASI PRODUK');
    print('Nama Produk: $namaProduk');
    print('Harga produk: Rp.$harga');
    print('Jumlah produk: $jumlah');
    print('Diskon: $diskon%');
    print('------------------------------------------');
    print('Harga Tanpa Diskon: ${totalHargaTanpaDiskon()}');
    print('Harga setelah Diskon: ${totalHargaSetelahDiskon()}');
    print('------------------------------------------');
}
}

void main() {
  var produk = Produk('kamera', 1500000, 2, 10);
  produk.tampilkanInformasiProduk();
}