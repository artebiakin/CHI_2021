// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Beer _$$_BeerFromJson(Map<String, dynamic> json) => _$_Beer(
      id: json['id'] as int,
      name: json['name'] as String,
      tagline: json['tagline'] as String,
      description: json['description'] as String,
      abv: (json['abv'] as num).toDouble(),
      ibu: (json['ibu'] as num).toDouble(),
      attenuationLevel: (json['attenuation_level'] as num?)?.toDouble(),
      targetOg: (json['target_og'] as num?)?.toDouble(),
      targetFg: json['target_fg'] as int?,
      imageUrl: json['image_url'] as String?,
      firstBrewed: Beer.dateTimeFromJson(json['first_brewed']),
      ebc: json['ebc'] as int?,
      srm: (json['srm'] as num?)?.toDouble(),
      ph: (json['ph'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_BeerToJson(_$_Beer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagline': instance.tagline,
      'description': instance.description,
      'abv': instance.abv,
      'ibu': instance.ibu,
      'attenuation_level': instance.attenuationLevel,
      'target_og': instance.targetOg,
      'target_fg': instance.targetFg,
      'image_url': instance.imageUrl,
      'first_brewed': instance.firstBrewed?.toIso8601String(),
      'ebc': instance.ebc,
      'srm': instance.srm,
      'ph': instance.ph,
    };
