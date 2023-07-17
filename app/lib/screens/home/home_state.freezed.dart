// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeLoadingCopyWith<$Res> {
  factory _$$HomeLoadingCopyWith(
          _$HomeLoading value, $Res Function(_$HomeLoading) then) =
      __$$HomeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoading>
    implements _$$HomeLoadingCopyWith<$Res> {
  __$$HomeLoadingCopyWithImpl(
      _$HomeLoading _value, $Res Function(_$HomeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoading with DiagnosticableTreeMixin implements HomeLoading {
  const _$HomeLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoading;
}

/// @nodoc
abstract class _$$HomeLoadedCopyWith<$Res> {
  factory _$$HomeLoadedCopyWith(
          _$HomeLoaded value, $Res Function(_$HomeLoaded) then) =
      __$$HomeLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? accountId,
      int totalMemeAmount,
      List<BlockchainMeme> loadedMemes});
}

/// @nodoc
class __$$HomeLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoaded>
    implements _$$HomeLoadedCopyWith<$Res> {
  __$$HomeLoadedCopyWithImpl(
      _$HomeLoaded _value, $Res Function(_$HomeLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? totalMemeAmount = null,
    Object? loadedMemes = null,
  }) {
    return _then(_$HomeLoaded(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalMemeAmount: null == totalMemeAmount
          ? _value.totalMemeAmount
          : totalMemeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      loadedMemes: null == loadedMemes
          ? _value._loadedMemes
          : loadedMemes // ignore: cast_nullable_to_non_nullable
              as List<BlockchainMeme>,
    ));
  }
}

/// @nodoc

class _$HomeLoaded with DiagnosticableTreeMixin implements HomeLoaded {
  const _$HomeLoaded(
      {this.accountId,
      required this.totalMemeAmount,
      required final List<BlockchainMeme> loadedMemes})
      : _loadedMemes = loadedMemes;

  @override
  final String? accountId;
  @override
  final int totalMemeAmount;
  final List<BlockchainMeme> _loadedMemes;
  @override
  List<BlockchainMeme> get loadedMemes {
    if (_loadedMemes is EqualUnmodifiableListView) return _loadedMemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedMemes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loaded(accountId: $accountId, totalMemeAmount: $totalMemeAmount, loadedMemes: $loadedMemes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.loaded'))
      ..add(DiagnosticsProperty('accountId', accountId))
      ..add(DiagnosticsProperty('totalMemeAmount', totalMemeAmount))
      ..add(DiagnosticsProperty('loadedMemes', loadedMemes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoaded &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.totalMemeAmount, totalMemeAmount) ||
                other.totalMemeAmount == totalMemeAmount) &&
            const DeepCollectionEquality()
                .equals(other._loadedMemes, _loadedMemes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, totalMemeAmount,
      const DeepCollectionEquality().hash(_loadedMemes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedCopyWith<_$HomeLoaded> get copyWith =>
      __$$HomeLoadedCopyWithImpl<_$HomeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)
        loaded,
  }) {
    return loaded(accountId, totalMemeAmount, loadedMemes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)?
        loaded,
  }) {
    return loaded?.call(accountId, totalMemeAmount, loadedMemes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? accountId, int totalMemeAmount,
            List<BlockchainMeme> loadedMemes)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(accountId, totalMemeAmount, loadedMemes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoaded implements HomeState {
  const factory HomeLoaded(
      {final String? accountId,
      required final int totalMemeAmount,
      required final List<BlockchainMeme> loadedMemes}) = _$HomeLoaded;

  String? get accountId;
  int get totalMemeAmount;
  List<BlockchainMeme> get loadedMemes;
  @JsonKey(ignore: true)
  _$$HomeLoadedCopyWith<_$HomeLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
