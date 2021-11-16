// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Beer _$BeerFromJson(Map<String, dynamic> json) {
  return _Beer.fromJson(json);
}

/// @nodoc
class _$BeerTearOff {
  const _$BeerTearOff();

  _Beer call(
      {required int id,
      required String name,
      required String tagline,
      required String description,
      required double abv,
      required double ibu,
      @JsonKey(name: 'attenuation_level')
          double? attenuationLevel,
      @JsonKey(name: 'target_og')
          double? targetOg,
      @JsonKey(name: 'target_fg')
          int? targetFg,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
          DateTime? firstBrewed,
      int? ebc,
      double? srm,
      double? ph}) {
    return _Beer(
      id: id,
      name: name,
      tagline: tagline,
      description: description,
      abv: abv,
      ibu: ibu,
      attenuationLevel: attenuationLevel,
      targetOg: targetOg,
      targetFg: targetFg,
      imageUrl: imageUrl,
      firstBrewed: firstBrewed,
      ebc: ebc,
      srm: srm,
      ph: ph,
    );
  }

  Beer fromJson(Map<String, Object?> json) {
    return Beer.fromJson(json);
  }
}

/// @nodoc
const $Beer = _$BeerTearOff();

/// @nodoc
mixin _$Beer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get abv => throw _privateConstructorUsedError;
  double get ibu => throw _privateConstructorUsedError;
  @JsonKey(name: 'attenuation_level')
  double? get attenuationLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_og')
  double? get targetOg => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_fg')
  int? get targetFg => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
  DateTime? get firstBrewed => throw _privateConstructorUsedError;
  int? get ebc => throw _privateConstructorUsedError;
  double? get srm => throw _privateConstructorUsedError;
  double? get ph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerCopyWith<Beer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerCopyWith<$Res> {
  factory $BeerCopyWith(Beer value, $Res Function(Beer) then) =
      _$BeerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String tagline,
      String description,
      double abv,
      double ibu,
      @JsonKey(name: 'attenuation_level')
          double? attenuationLevel,
      @JsonKey(name: 'target_og')
          double? targetOg,
      @JsonKey(name: 'target_fg')
          int? targetFg,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
          DateTime? firstBrewed,
      int? ebc,
      double? srm,
      double? ph});
}

/// @nodoc
class _$BeerCopyWithImpl<$Res> implements $BeerCopyWith<$Res> {
  _$BeerCopyWithImpl(this._value, this._then);

  final Beer _value;
  // ignore: unused_field
  final $Res Function(Beer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? description = freezed,
    Object? abv = freezed,
    Object? ibu = freezed,
    Object? attenuationLevel = freezed,
    Object? targetOg = freezed,
    Object? targetFg = freezed,
    Object? imageUrl = freezed,
    Object? firstBrewed = freezed,
    Object? ebc = freezed,
    Object? srm = freezed,
    Object? ph = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      abv: abv == freezed
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as double,
      ibu: ibu == freezed
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as double,
      attenuationLevel: attenuationLevel == freezed
          ? _value.attenuationLevel
          : attenuationLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      targetOg: targetOg == freezed
          ? _value.targetOg
          : targetOg // ignore: cast_nullable_to_non_nullable
              as double?,
      targetFg: targetFg == freezed
          ? _value.targetFg
          : targetFg // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstBrewed: firstBrewed == freezed
          ? _value.firstBrewed
          : firstBrewed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ebc: ebc == freezed
          ? _value.ebc
          : ebc // ignore: cast_nullable_to_non_nullable
              as int?,
      srm: srm == freezed
          ? _value.srm
          : srm // ignore: cast_nullable_to_non_nullable
              as double?,
      ph: ph == freezed
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$BeerCopyWith<$Res> implements $BeerCopyWith<$Res> {
  factory _$BeerCopyWith(_Beer value, $Res Function(_Beer) then) =
      __$BeerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String tagline,
      String description,
      double abv,
      double ibu,
      @JsonKey(name: 'attenuation_level')
          double? attenuationLevel,
      @JsonKey(name: 'target_og')
          double? targetOg,
      @JsonKey(name: 'target_fg')
          int? targetFg,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
          DateTime? firstBrewed,
      int? ebc,
      double? srm,
      double? ph});
}

/// @nodoc
class __$BeerCopyWithImpl<$Res> extends _$BeerCopyWithImpl<$Res>
    implements _$BeerCopyWith<$Res> {
  __$BeerCopyWithImpl(_Beer _value, $Res Function(_Beer) _then)
      : super(_value, (v) => _then(v as _Beer));

  @override
  _Beer get _value => super._value as _Beer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? description = freezed,
    Object? abv = freezed,
    Object? ibu = freezed,
    Object? attenuationLevel = freezed,
    Object? targetOg = freezed,
    Object? targetFg = freezed,
    Object? imageUrl = freezed,
    Object? firstBrewed = freezed,
    Object? ebc = freezed,
    Object? srm = freezed,
    Object? ph = freezed,
  }) {
    return _then(_Beer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      abv: abv == freezed
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as double,
      ibu: ibu == freezed
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as double,
      attenuationLevel: attenuationLevel == freezed
          ? _value.attenuationLevel
          : attenuationLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      targetOg: targetOg == freezed
          ? _value.targetOg
          : targetOg // ignore: cast_nullable_to_non_nullable
              as double?,
      targetFg: targetFg == freezed
          ? _value.targetFg
          : targetFg // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstBrewed: firstBrewed == freezed
          ? _value.firstBrewed
          : firstBrewed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ebc: ebc == freezed
          ? _value.ebc
          : ebc // ignore: cast_nullable_to_non_nullable
              as int?,
      srm: srm == freezed
          ? _value.srm
          : srm // ignore: cast_nullable_to_non_nullable
              as double?,
      ph: ph == freezed
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Beer implements _Beer {
  _$_Beer(
      {required this.id,
      required this.name,
      required this.tagline,
      required this.description,
      required this.abv,
      required this.ibu,
      @JsonKey(name: 'attenuation_level')
          this.attenuationLevel,
      @JsonKey(name: 'target_og')
          this.targetOg,
      @JsonKey(name: 'target_fg')
          this.targetFg,
      @JsonKey(name: 'image_url')
          this.imageUrl,
      @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
          this.firstBrewed,
      this.ebc,
      this.srm,
      this.ph});

  factory _$_Beer.fromJson(Map<String, dynamic> json) => _$$_BeerFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String tagline;
  @override
  final String description;
  @override
  final double abv;
  @override
  final double ibu;
  @override
  @JsonKey(name: 'attenuation_level')
  final double? attenuationLevel;
  @override
  @JsonKey(name: 'target_og')
  final double? targetOg;
  @override
  @JsonKey(name: 'target_fg')
  final int? targetFg;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
  final DateTime? firstBrewed;
  @override
  final int? ebc;
  @override
  final double? srm;
  @override
  final double? ph;

  @override
  String toString() {
    return 'Beer(id: $id, name: $name, tagline: $tagline, description: $description, abv: $abv, ibu: $ibu, attenuationLevel: $attenuationLevel, targetOg: $targetOg, targetFg: $targetFg, imageUrl: $imageUrl, firstBrewed: $firstBrewed, ebc: $ebc, srm: $srm, ph: $ph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Beer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.abv, abv) || other.abv == abv) &&
            (identical(other.ibu, ibu) || other.ibu == ibu) &&
            (identical(other.attenuationLevel, attenuationLevel) ||
                other.attenuationLevel == attenuationLevel) &&
            (identical(other.targetOg, targetOg) ||
                other.targetOg == targetOg) &&
            (identical(other.targetFg, targetFg) ||
                other.targetFg == targetFg) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.firstBrewed, firstBrewed) ||
                other.firstBrewed == firstBrewed) &&
            (identical(other.ebc, ebc) || other.ebc == ebc) &&
            (identical(other.srm, srm) || other.srm == srm) &&
            (identical(other.ph, ph) || other.ph == ph));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      tagline,
      description,
      abv,
      ibu,
      attenuationLevel,
      targetOg,
      targetFg,
      imageUrl,
      firstBrewed,
      ebc,
      srm,
      ph);

  @JsonKey(ignore: true)
  @override
  _$BeerCopyWith<_Beer> get copyWith =>
      __$BeerCopyWithImpl<_Beer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeerToJson(this);
  }
}

abstract class _Beer implements Beer {
  factory _Beer(
      {required int id,
      required String name,
      required String tagline,
      required String description,
      required double abv,
      required double ibu,
      @JsonKey(name: 'attenuation_level')
          double? attenuationLevel,
      @JsonKey(name: 'target_og')
          double? targetOg,
      @JsonKey(name: 'target_fg')
          int? targetFg,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
          DateTime? firstBrewed,
      int? ebc,
      double? srm,
      double? ph}) = _$_Beer;

  factory _Beer.fromJson(Map<String, dynamic> json) = _$_Beer.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tagline;
  @override
  String get description;
  @override
  double get abv;
  @override
  double get ibu;
  @override
  @JsonKey(name: 'attenuation_level')
  double? get attenuationLevel;
  @override
  @JsonKey(name: 'target_og')
  double? get targetOg;
  @override
  @JsonKey(name: 'target_fg')
  int? get targetFg;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'first_brewed', fromJson: Beer.dateTimeFromJson)
  DateTime? get firstBrewed;
  @override
  int? get ebc;
  @override
  double? get srm;
  @override
  double? get ph;
  @override
  @JsonKey(ignore: true)
  _$BeerCopyWith<_Beer> get copyWith => throw _privateConstructorUsedError;
}
