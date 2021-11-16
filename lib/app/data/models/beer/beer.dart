import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'beer.freezed.dart';
part 'beer.g.dart';

@freezed
class Beer with _$Beer {
  factory Beer({
    required int id,
    required String name,
    required String tagline,
    required String description,
    required double abv,
    required double ibu,
    @JsonKey(name: 'attenuation_level') double? attenuationLevel,
    @JsonKey(name: 'target_og') double? targetOg,
    @JsonKey(name: 'target_fg') int? targetFg,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
        DateTime? firstBrewed,
    int? ebc,
    double? srm,
    double? ph,
  }) = _Beer;

  factory Beer.fromJson(Map<String, dynamic> json) => _$BeerFromJson(json);

  static DateTime dateTimeFromJson(dynamic data) {
    final regExp = RegExp(r'^[0-9]{2}/[0-9]{4}$');
    if (regExp.hasMatch(data)) {
      return DateFormat('mm/yyyy').parse(data);
    } else {
      return DateTime.parse(data);
    }
  }
}
