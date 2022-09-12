// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationInfo _$_$_PaginationInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['current_page']);
  return _$_PaginationInfo(
    currentPage: json['current_page'] as int? ?? 1,
    perPage: json['per_page'] as int? ?? 20,
    total: json['total'] as int? ?? 1,
    totalPages: json['total_pages'] as int? ?? 1,
    hasNext: json['has_next'] as bool? ?? false,
    hasPrevious: json['has_previous'] as bool? ?? false,
    links: json['links'] == null
        ? null
        : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PaginationInfoToJson(_$_PaginationInfo instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'has_next': instance.hasNext,
      'has_previous': instance.hasPrevious,
      'links': instance.links?.toJson(),
    };

_$_PaginationLinks _$_$_PaginationLinksFromJson(Map<String, dynamic> json) {
  return _$_PaginationLinks(
    current: json['current'] as String?,
    first: json['first'] as String?,
    last: json['last'] as String?,
  );
}

Map<String, dynamic> _$_$_PaginationLinksToJson(_$_PaginationLinks instance) =>
    <String, dynamic>{
      'current': instance.current,
      'first': instance.first,
      'last': instance.last,
    };
