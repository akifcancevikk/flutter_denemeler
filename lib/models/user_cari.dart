// To parse this JSON data, do
//
//     final userCari = userCariFromMap(jsonString);
// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<UserCari> userCariFromMap(String str) => List<UserCari>.from(json.decode(str).map((x) => UserCari.fromMap(x)));

String userCariToMap(List<UserCari> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class UserCari {
    final String cariKod;
    final String cariUnvan;
    final Dvz dvz;

    UserCari({
        required this.cariKod,
        required this.cariUnvan,
        required this.dvz,
    });

    factory UserCari.fromMap(Map<String, dynamic> json) => UserCari(
        cariKod: json["cari_kod"],
        cariUnvan: json["cari_unvan"],
        dvz: dvzValues.map[json["dvz"]] ?? Dvz.TL
    );

    Map<String, dynamic> toMap() => {
        "cari_kod": cariKod,
        "cari_unvan": cariUnvan,
        "dvz": dvzValues.reverse[dvz],
    };

  toLowerCase() {}
}

enum Dvz {
    TL,
    USD
}

final dvzValues = EnumValues({
    "TL": Dvz.TL,
    "USD": Dvz.USD
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
