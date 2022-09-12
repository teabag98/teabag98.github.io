// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pagination_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfo.fromJson(json);
}

/// @nodoc
class _$PaginationInfoTearOff {
  const _$PaginationInfoTearOff();

  _PaginationInfo call(
      {@JsonKey(name: "current_page", required: true, defaultValue: 1)
          int? currentPage,
      @JsonKey(name: "per_page", defaultValue: 20)
          int? perPage,
      @JsonKey(name: "total", defaultValue: 1)
          int? total,
      @JsonKey(name: "total_pages", defaultValue: 1)
          int? totalPages,
      @JsonKey(name: "has_next", defaultValue: false)
          bool? hasNext,
      @JsonKey(name: "has_previous", defaultValue: false)
          bool? hasPrevious,
      @JsonKey(name: 'links')
          PaginationLinks? links}) {
    return _PaginationInfo(
      currentPage: currentPage,
      perPage: perPage,
      total: total,
      totalPages: totalPages,
      hasNext: hasNext,
      hasPrevious: hasPrevious,
      links: links,
    );
  }

  PaginationInfo fromJson(Map<String, Object> json) {
    return PaginationInfo.fromJson(json);
  }
}

/// @nodoc
const $PaginationInfo = _$PaginationInfoTearOff();

/// @nodoc
mixin _$PaginationInfo {
  @JsonKey(name: "current_page", required: true, defaultValue: 1)
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page", defaultValue: 20)
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total", defaultValue: 1)
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages", defaultValue: 1)
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next", defaultValue: false)
  bool? get hasNext => throw _privateConstructorUsedError;
  @JsonKey(name: "has_previous", defaultValue: false)
  bool? get hasPrevious => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  PaginationLinks? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "current_page", required: true, defaultValue: 1)
          int? currentPage,
      @JsonKey(name: "per_page", defaultValue: 20)
          int? perPage,
      @JsonKey(name: "total", defaultValue: 1)
          int? total,
      @JsonKey(name: "total_pages", defaultValue: 1)
          int? totalPages,
      @JsonKey(name: "has_next", defaultValue: false)
          bool? hasNext,
      @JsonKey(name: "has_previous", defaultValue: false)
          bool? hasPrevious,
      @JsonKey(name: 'links')
          PaginationLinks? links});

  $PaginationLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  final PaginationInfo _value;
  // ignore: unused_field
  final $Res Function(PaginationInfo) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? hasNext = freezed,
    Object? hasPrevious = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrevious: hasPrevious == freezed
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
    ));
  }

  @override
  $PaginationLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $PaginationLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$PaginationInfoCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$PaginationInfoCopyWith(
          _PaginationInfo value, $Res Function(_PaginationInfo) then) =
      __$PaginationInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "current_page", required: true, defaultValue: 1)
          int? currentPage,
      @JsonKey(name: "per_page", defaultValue: 20)
          int? perPage,
      @JsonKey(name: "total", defaultValue: 1)
          int? total,
      @JsonKey(name: "total_pages", defaultValue: 1)
          int? totalPages,
      @JsonKey(name: "has_next", defaultValue: false)
          bool? hasNext,
      @JsonKey(name: "has_previous", defaultValue: false)
          bool? hasPrevious,
      @JsonKey(name: 'links')
          PaginationLinks? links});

  @override
  $PaginationLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$PaginationInfoCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res>
    implements _$PaginationInfoCopyWith<$Res> {
  __$PaginationInfoCopyWithImpl(
      _PaginationInfo _value, $Res Function(_PaginationInfo) _then)
      : super(_value, (v) => _then(v as _PaginationInfo));

  @override
  _PaginationInfo get _value => super._value as _PaginationInfo;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? hasNext = freezed,
    Object? hasPrevious = freezed,
    Object? links = freezed,
  }) {
    return _then(_PaginationInfo(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrevious: hasPrevious == freezed
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PaginationLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationInfo implements _PaginationInfo {
  const _$_PaginationInfo(
      {@JsonKey(name: "current_page", required: true, defaultValue: 1)
          this.currentPage,
      @JsonKey(name: "per_page", defaultValue: 20)
          this.perPage,
      @JsonKey(name: "total", defaultValue: 1)
          this.total,
      @JsonKey(name: "total_pages", defaultValue: 1)
          this.totalPages,
      @JsonKey(name: "has_next", defaultValue: false)
          this.hasNext,
      @JsonKey(name: "has_previous", defaultValue: false)
          this.hasPrevious,
      @JsonKey(name: 'links')
          this.links});

  factory _$_PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationInfoFromJson(json);

  @override
  @JsonKey(name: "current_page", required: true, defaultValue: 1)
  final int? currentPage;
  @override
  @JsonKey(name: "per_page", defaultValue: 20)
  final int? perPage;
  @override
  @JsonKey(name: "total", defaultValue: 1)
  final int? total;
  @override
  @JsonKey(name: "total_pages", defaultValue: 1)
  final int? totalPages;
  @override
  @JsonKey(name: "has_next", defaultValue: false)
  final bool? hasNext;
  @override
  @JsonKey(name: "has_previous", defaultValue: false)
  final bool? hasPrevious;
  @override
  @JsonKey(name: 'links')
  final PaginationLinks? links;

  @override
  String toString() {
    return 'PaginationInfo(currentPage: $currentPage, perPage: $perPage, total: $total, totalPages: $totalPages, hasNext: $hasNext, hasPrevious: $hasPrevious, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationInfo &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.perPage, perPage) ||
                const DeepCollectionEquality()
                    .equals(other.perPage, perPage)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.hasNext, hasNext) ||
                const DeepCollectionEquality()
                    .equals(other.hasNext, hasNext)) &&
            (identical(other.hasPrevious, hasPrevious) ||
                const DeepCollectionEquality()
                    .equals(other.hasPrevious, hasPrevious)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(perPage) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(hasNext) ^
      const DeepCollectionEquality().hash(hasPrevious) ^
      const DeepCollectionEquality().hash(links);

  @JsonKey(ignore: true)
  @override
  _$PaginationInfoCopyWith<_PaginationInfo> get copyWith =>
      __$PaginationInfoCopyWithImpl<_PaginationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationInfoToJson(this);
  }
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo(
      {@JsonKey(name: "current_page", required: true, defaultValue: 1)
          int? currentPage,
      @JsonKey(name: "per_page", defaultValue: 20)
          int? perPage,
      @JsonKey(name: "total", defaultValue: 1)
          int? total,
      @JsonKey(name: "total_pages", defaultValue: 1)
          int? totalPages,
      @JsonKey(name: "has_next", defaultValue: false)
          bool? hasNext,
      @JsonKey(name: "has_previous", defaultValue: false)
          bool? hasPrevious,
      @JsonKey(name: 'links')
          PaginationLinks? links}) = _$_PaginationInfo;

  factory _PaginationInfo.fromJson(Map<String, dynamic> json) =
      _$_PaginationInfo.fromJson;

  @override
  @JsonKey(name: "current_page", required: true, defaultValue: 1)
  int? get currentPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "per_page", defaultValue: 20)
  int? get perPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total", defaultValue: 1)
  int? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_pages", defaultValue: 1)
  int? get totalPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "has_next", defaultValue: false)
  bool? get hasNext => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "has_previous", defaultValue: false)
  bool? get hasPrevious => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'links')
  PaginationLinks? get links => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginationInfoCopyWith<_PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) {
  return _PaginationLinks.fromJson(json);
}

/// @nodoc
class _$PaginationLinksTearOff {
  const _$PaginationLinksTearOff();

  _PaginationLinks call({String? current, String? first, String? last}) {
    return _PaginationLinks(
      current: current,
      first: first,
      last: last,
    );
  }

  PaginationLinks fromJson(Map<String, Object> json) {
    return PaginationLinks.fromJson(json);
  }
}

/// @nodoc
const $PaginationLinks = _$PaginationLinksTearOff();

/// @nodoc
mixin _$PaginationLinks {
  String? get current => throw _privateConstructorUsedError;
  String? get first => throw _privateConstructorUsedError;
  String? get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLinksCopyWith<PaginationLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLinksCopyWith<$Res> {
  factory $PaginationLinksCopyWith(
          PaginationLinks value, $Res Function(PaginationLinks) then) =
      _$PaginationLinksCopyWithImpl<$Res>;
  $Res call({String? current, String? first, String? last});
}

/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._value, this._then);

  final PaginationLinks _value;
  // ignore: unused_field
  final $Res Function(PaginationLinks) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? first = freezed,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaginationLinksCopyWith<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  factory _$PaginationLinksCopyWith(
          _PaginationLinks value, $Res Function(_PaginationLinks) then) =
      __$PaginationLinksCopyWithImpl<$Res>;
  @override
  $Res call({String? current, String? first, String? last});
}

/// @nodoc
class __$PaginationLinksCopyWithImpl<$Res>
    extends _$PaginationLinksCopyWithImpl<$Res>
    implements _$PaginationLinksCopyWith<$Res> {
  __$PaginationLinksCopyWithImpl(
      _PaginationLinks _value, $Res Function(_PaginationLinks) _then)
      : super(_value, (v) => _then(v as _PaginationLinks));

  @override
  _PaginationLinks get _value => super._value as _PaginationLinks;

  @override
  $Res call({
    Object? current = freezed,
    Object? first = freezed,
    Object? last = freezed,
  }) {
    return _then(_PaginationLinks(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationLinks implements _PaginationLinks {
  const _$_PaginationLinks({this.current, this.first, this.last});

  factory _$_PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationLinksFromJson(json);

  @override
  final String? current;
  @override
  final String? first;
  @override
  final String? last;

  @override
  String toString() {
    return 'PaginationLinks(current: $current, first: $first, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationLinks &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(last);

  @JsonKey(ignore: true)
  @override
  _$PaginationLinksCopyWith<_PaginationLinks> get copyWith =>
      __$PaginationLinksCopyWithImpl<_PaginationLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationLinksToJson(this);
  }
}

abstract class _PaginationLinks implements PaginationLinks {
  const factory _PaginationLinks(
      {String? current, String? first, String? last}) = _$_PaginationLinks;

  factory _PaginationLinks.fromJson(Map<String, dynamic> json) =
      _$_PaginationLinks.fromJson;

  @override
  String? get current => throw _privateConstructorUsedError;
  @override
  String? get first => throw _privateConstructorUsedError;
  @override
  String? get last => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginationLinksCopyWith<_PaginationLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
