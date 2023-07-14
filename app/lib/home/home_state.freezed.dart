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
    required TResult Function(int totalMemeAmount, List<Meme> loadedMemes)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalMemeAmount, List<Meme> loadedMemes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalMemeAmount, List<Meme> loadedMemes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeLoaded value)? loaded,
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
abstract class _$$_HomeLoadingCopyWith<$Res> {
  factory _$$_HomeLoadingCopyWith(
          _$_HomeLoading value, $Res Function(_$_HomeLoading) then) =
      __$$_HomeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoading>
    implements _$$_HomeLoadingCopyWith<$Res> {
  __$$_HomeLoadingCopyWithImpl(
      _$_HomeLoading _value, $Res Function(_$_HomeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeLoading with DiagnosticableTreeMixin implements _HomeLoading {
  const _$_HomeLoading();

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
        (other.runtimeType == runtimeType && other is _$_HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalMemeAmount, List<Meme> loadedMemes)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalMemeAmount, List<Meme> loadedMemes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalMemeAmount, List<Meme> loadedMemes)? loaded,
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
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoading implements HomeState {
  const factory _HomeLoading() = _$_HomeLoading;
}

/// @nodoc
abstract class _$$_HomeLoadedCopyWith<$Res> {
  factory _$$_HomeLoadedCopyWith(
          _$_HomeLoaded value, $Res Function(_$_HomeLoaded) then) =
      __$$_HomeLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({int totalMemeAmount, List<Meme> loadedMemes});
}

/// @nodoc
class __$$_HomeLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoaded>
    implements _$$_HomeLoadedCopyWith<$Res> {
  __$$_HomeLoadedCopyWithImpl(
      _$_HomeLoaded _value, $Res Function(_$_HomeLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalMemeAmount = null,
    Object? loadedMemes = null,
  }) {
    return _then(_$_HomeLoaded(
      totalMemeAmount: null == totalMemeAmount
          ? _value.totalMemeAmount
          : totalMemeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      loadedMemes: null == loadedMemes
          ? _value._loadedMemes
          : loadedMemes // ignore: cast_nullable_to_non_nullable
              as List<Meme>,
    ));
  }
}

/// @nodoc

class _$_HomeLoaded with DiagnosticableTreeMixin implements _HomeLoaded {
  const _$_HomeLoaded(
      {required this.totalMemeAmount, required final List<Meme> loadedMemes})
      : _loadedMemes = loadedMemes;

  @override
  final int totalMemeAmount;
  final List<Meme> _loadedMemes;
  @override
  List<Meme> get loadedMemes {
    if (_loadedMemes is EqualUnmodifiableListView) return _loadedMemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedMemes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loaded(totalMemeAmount: $totalMemeAmount, loadedMemes: $loadedMemes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.loaded'))
      ..add(DiagnosticsProperty('totalMemeAmount', totalMemeAmount))
      ..add(DiagnosticsProperty('loadedMemes', loadedMemes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoaded &&
            (identical(other.totalMemeAmount, totalMemeAmount) ||
                other.totalMemeAmount == totalMemeAmount) &&
            const DeepCollectionEquality()
                .equals(other._loadedMemes, _loadedMemes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalMemeAmount,
      const DeepCollectionEquality().hash(_loadedMemes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadedCopyWith<_$_HomeLoaded> get copyWith =>
      __$$_HomeLoadedCopyWithImpl<_$_HomeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalMemeAmount, List<Meme> loadedMemes)
        loaded,
  }) {
    return loaded(totalMemeAmount, loadedMemes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalMemeAmount, List<Meme> loadedMemes)? loaded,
  }) {
    return loaded?.call(totalMemeAmount, loadedMemes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalMemeAmount, List<Meme> loadedMemes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(totalMemeAmount, loadedMemes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoaded implements HomeState {
  const factory _HomeLoaded(
      {required final int totalMemeAmount,
      required final List<Meme> loadedMemes}) = _$_HomeLoaded;

  int get totalMemeAmount;
  List<Meme> get loadedMemes;
  @JsonKey(ignore: true)
  _$$_HomeLoadedCopyWith<_$_HomeLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
