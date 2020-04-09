// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
    key: json['key'] as String,
    title: json['title'] as String,
    authorKey: json['author_key'] as String,
    firstPublishYear: json['first_publish_year'] as String,
    editionCount: json['edition_count'] as int,
  );
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'author_key': instance.authorKey,
      'first_publish_year': instance.firstPublishYear,
      'edition_count': instance.editionCount,
    };
