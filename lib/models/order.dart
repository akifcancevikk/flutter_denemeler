// Define a model class for your JSON data
class Order {
  final String evrakNo;
  final DateTime tarih;
  final String cariKod;
  final String cariIsmi;
  final double miktar;
  final double teslimMik;
  final double kalanMiktar;
  final int satirSayisi;
  final double brutTutar;
  final double iskonto;
  final double vergi;
  final double netTutar;
  final int adresNo;
  final String doviz;
  final String temKod;
  final String temAdi;
  final double iskYuzde;
  final String durum;
  final String onayDurum;
  final String not1;
  final String not2;
  final String not3;
  final String user;

  Order({
    required this.evrakNo,
    required this.tarih,
    required this.cariKod,
    required this.cariIsmi,
    required this.miktar,
    required this.teslimMik,
    required this.kalanMiktar,
    required this.satirSayisi,
    required this.brutTutar,
    required this.iskonto,
    required this.vergi,
    required this.netTutar,
    required this.adresNo,
    required this.doviz,
    required this.temKod,
    required this.temAdi,
    required this.iskYuzde,
    required this.durum,
    required this.onayDurum,
    required this.not1,
    required this.not2,
    required this.not3,
    required this.user,
  });

  // Factory method to create an Order object from JSON
  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      evrakNo: json['sip_evrakno'],
      tarih: DateTime.parse(json['sip_tarihi']),
      cariKod: json['sip_cari_kod'],
      cariIsmi: json['sip_cari_ismi'],
      miktar: json['sip_miktar'].toDouble(),
      teslimMik: json['sip_teslim_mik'].toDouble(),
      kalanMiktar: json['sip_kalan_miktar'].toDouble(),
      satirSayisi: json['sip_satir_sayisi'],
      brutTutar: json['sip_brut_tutar'].toDouble(),
      iskonto: json['sip_iskonto'].toDouble(),
      vergi: json['sip_vergi'].toDouble(),
      netTutar: json['sip_net_tutar'].toDouble(),
      adresNo: json['sip_adresno'],
      doviz: json['sip_doviz'],
      temKod: json['sip_tem_kod'],
      temAdi: json['sip_tem_adi'],
      iskYuzde: json['sip_isk_yuzde'].toDouble(),
      durum: json['sip_durum'],
      onayDurum: json['sip_onay_durum'],
      not1: json['sip_not1'],
      not2: json['sip_not2'],
      not3: json['sip_not3'],
      user: json['sip_user'],
    );
  }
}
