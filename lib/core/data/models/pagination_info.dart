import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info.g.dart';
part 'pagination_info.freezed.dart';

@freezed
class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    // ignore: invalid_annotation_target
    @JsonKey(name: "current_page", required: true, defaultValue: 1)
        int? currentPage,
    @JsonKey(name: "per_page", defaultValue: 20) int? perPage,
    @JsonKey(name: "total", defaultValue: 1) int? total,
    @JsonKey(name: "total_pages", defaultValue: 1) int? totalPages,
    @JsonKey(name: "has_next", defaultValue: false) bool? hasNext,
    @JsonKey(name: "has_previous", defaultValue: false) bool? hasPrevious,
    @JsonKey(name: 'links') PaginationLinks? links,
  }) = _PaginationInfo;

  factory PaginationInfo.fromJson(Map json) => _$PaginationInfoFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}

@freezed
class PaginationLinks with _$PaginationLinks {
  const factory PaginationLinks({
    String? current,
    String? first,
    String? last,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map json) => _$PaginationLinksFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
