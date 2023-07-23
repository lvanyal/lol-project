// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_meme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateMemeState {
  MemeTemplate get selectedTemplate => throw _privateConstructorUsedError;
  List<String> get texts => throw _privateConstructorUsedError;
  bool get showProgress => throw _privateConstructorUsedError;
  bool get enableButton => throw _privateConstructorUsedError;
  String? get snackText => throw _privateConstructorUsedError;
  SnackType? get snackType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMemeStateCopyWith<CreateMemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMemeStateCopyWith<$Res> {
  factory $CreateMemeStateCopyWith(
          CreateMemeState value, $Res Function(CreateMemeState) then) =
      _$CreateMemeStateCopyWithImpl<$Res, CreateMemeState>;
  @useResult
  $Res call(
      {MemeTemplate selectedTemplate,
      List<String> texts,
      bool showProgress,
      bool enableButton,
      String? snackText,
      SnackType? snackType});
}

/// @nodoc
class _$CreateMemeStateCopyWithImpl<$Res, $Val extends CreateMemeState>
    implements $CreateMemeStateCopyWith<$Res> {
  _$CreateMemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTemplate = null,
    Object? texts = null,
    Object? showProgress = null,
    Object? enableButton = null,
    Object? snackText = freezed,
    Object? snackType = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTemplate: null == selectedTemplate
          ? _value.selectedTemplate
          : selectedTemplate // ignore: cast_nullable_to_non_nullable
              as MemeTemplate,
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showProgress: null == showProgress
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      enableButton: null == enableButton
          ? _value.enableButton
          : enableButton // ignore: cast_nullable_to_non_nullable
              as bool,
      snackText: freezed == snackText
          ? _value.snackText
          : snackText // ignore: cast_nullable_to_non_nullable
              as String?,
      snackType: freezed == snackType
          ? _value.snackType
          : snackType // ignore: cast_nullable_to_non_nullable
              as SnackType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMemeMainStateCopyWith<$Res>
    implements $CreateMemeStateCopyWith<$Res> {
  factory _$$CreateMemeMainStateCopyWith(_$CreateMemeMainState value,
          $Res Function(_$CreateMemeMainState) then) =
      __$$CreateMemeMainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MemeTemplate selectedTemplate,
      List<String> texts,
      bool showProgress,
      bool enableButton,
      String? snackText,
      SnackType? snackType});
}

/// @nodoc
class __$$CreateMemeMainStateCopyWithImpl<$Res>
    extends _$CreateMemeStateCopyWithImpl<$Res, _$CreateMemeMainState>
    implements _$$CreateMemeMainStateCopyWith<$Res> {
  __$$CreateMemeMainStateCopyWithImpl(
      _$CreateMemeMainState _value, $Res Function(_$CreateMemeMainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTemplate = null,
    Object? texts = null,
    Object? showProgress = null,
    Object? enableButton = null,
    Object? snackText = freezed,
    Object? snackType = freezed,
  }) {
    return _then(_$CreateMemeMainState(
      selectedTemplate: null == selectedTemplate
          ? _value.selectedTemplate
          : selectedTemplate // ignore: cast_nullable_to_non_nullable
              as MemeTemplate,
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showProgress: null == showProgress
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      enableButton: null == enableButton
          ? _value.enableButton
          : enableButton // ignore: cast_nullable_to_non_nullable
              as bool,
      snackText: freezed == snackText
          ? _value.snackText
          : snackText // ignore: cast_nullable_to_non_nullable
              as String?,
      snackType: freezed == snackType
          ? _value.snackType
          : snackType // ignore: cast_nullable_to_non_nullable
              as SnackType?,
    ));
  }
}

/// @nodoc

class _$CreateMemeMainState implements CreateMemeMainState {
  const _$CreateMemeMainState(
      {required this.selectedTemplate,
      required final List<String> texts,
      this.showProgress = false,
      this.enableButton = false,
      this.snackText,
      this.snackType})
      : _texts = texts;

  @override
  final MemeTemplate selectedTemplate;
  final List<String> _texts;
  @override
  List<String> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  @override
  @JsonKey()
  final bool showProgress;
  @override
  @JsonKey()
  final bool enableButton;
  @override
  final String? snackText;
  @override
  final SnackType? snackType;

  @override
  String toString() {
    return 'CreateMemeState(selectedTemplate: $selectedTemplate, texts: $texts, showProgress: $showProgress, enableButton: $enableButton, snackText: $snackText, snackType: $snackType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMemeMainState &&
            (identical(other.selectedTemplate, selectedTemplate) ||
                other.selectedTemplate == selectedTemplate) &&
            const DeepCollectionEquality().equals(other._texts, _texts) &&
            (identical(other.showProgress, showProgress) ||
                other.showProgress == showProgress) &&
            (identical(other.enableButton, enableButton) ||
                other.enableButton == enableButton) &&
            (identical(other.snackText, snackText) ||
                other.snackText == snackText) &&
            (identical(other.snackType, snackType) ||
                other.snackType == snackType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTemplate,
      const DeepCollectionEquality().hash(_texts),
      showProgress,
      enableButton,
      snackText,
      snackType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMemeMainStateCopyWith<_$CreateMemeMainState> get copyWith =>
      __$$CreateMemeMainStateCopyWithImpl<_$CreateMemeMainState>(
          this, _$identity);
}

abstract class CreateMemeMainState implements CreateMemeState {
  const factory CreateMemeMainState(
      {required final MemeTemplate selectedTemplate,
      required final List<String> texts,
      final bool showProgress,
      final bool enableButton,
      final String? snackText,
      final SnackType? snackType}) = _$CreateMemeMainState;

  @override
  MemeTemplate get selectedTemplate;
  @override
  List<String> get texts;
  @override
  bool get showProgress;
  @override
  bool get enableButton;
  @override
  String? get snackText;
  @override
  SnackType? get snackType;
  @override
  @JsonKey(ignore: true)
  _$$CreateMemeMainStateCopyWith<_$CreateMemeMainState> get copyWith =>
      throw _privateConstructorUsedError;
}
