// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStatesCopyWith<$Res> {
  factory $GalleryStatesCopyWith(
          GalleryStates value, $Res Function(GalleryStates) then) =
      _$GalleryStatesCopyWithImpl<$Res, GalleryStates>;
}

/// @nodoc
class _$GalleryStatesCopyWithImpl<$Res, $Val extends GalleryStates>
    implements $GalleryStatesCopyWith<$Res> {
  _$GalleryStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GalleryInitialStateCopyWith<$Res> {
  factory _$$GalleryInitialStateCopyWith(_$GalleryInitialState value,
          $Res Function(_$GalleryInitialState) then) =
      __$$GalleryInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryInitialStateCopyWithImpl<$Res>
    extends _$GalleryStatesCopyWithImpl<$Res, _$GalleryInitialState>
    implements _$$GalleryInitialStateCopyWith<$Res> {
  __$$GalleryInitialStateCopyWithImpl(
      _$GalleryInitialState _value, $Res Function(_$GalleryInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryInitialState implements GalleryInitialState {
  const _$GalleryInitialState();

  @override
  String toString() {
    return 'GalleryStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GalleryInitialState implements GalleryStates {
  const factory GalleryInitialState() = _$GalleryInitialState;
}

/// @nodoc
abstract class _$$GalleryLoadingStateCopyWith<$Res> {
  factory _$$GalleryLoadingStateCopyWith(_$GalleryLoadingState value,
          $Res Function(_$GalleryLoadingState) then) =
      __$$GalleryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryLoadingStateCopyWithImpl<$Res>
    extends _$GalleryStatesCopyWithImpl<$Res, _$GalleryLoadingState>
    implements _$$GalleryLoadingStateCopyWith<$Res> {
  __$$GalleryLoadingStateCopyWithImpl(
      _$GalleryLoadingState _value, $Res Function(_$GalleryLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryLoadingState implements GalleryLoadingState {
  const _$GalleryLoadingState();

  @override
  String toString() {
    return 'GalleryStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GalleryLoadingState implements GalleryStates {
  const factory GalleryLoadingState() = _$GalleryLoadingState;
}

/// @nodoc
abstract class _$$GalleryUploadedStateCopyWith<$Res> {
  factory _$$GalleryUploadedStateCopyWith(_$GalleryUploadedState value,
          $Res Function(_$GalleryUploadedState) then) =
      __$$GalleryUploadedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryUploadedStateCopyWithImpl<$Res>
    extends _$GalleryStatesCopyWithImpl<$Res, _$GalleryUploadedState>
    implements _$$GalleryUploadedStateCopyWith<$Res> {
  __$$GalleryUploadedStateCopyWithImpl(_$GalleryUploadedState _value,
      $Res Function(_$GalleryUploadedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryUploadedState implements GalleryUploadedState {
  const _$GalleryUploadedState();

  @override
  String toString() {
    return 'GalleryStates.uploaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryUploadedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class GalleryUploadedState implements GalleryStates {
  const factory GalleryUploadedState() = _$GalleryUploadedState;
}

/// @nodoc
abstract class _$$GalleryFilePickedStateCopyWith<$Res> {
  factory _$$GalleryFilePickedStateCopyWith(_$GalleryFilePickedState value,
          $Res Function(_$GalleryFilePickedState) then) =
      __$$GalleryFilePickedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryFilePickedStateCopyWithImpl<$Res>
    extends _$GalleryStatesCopyWithImpl<$Res, _$GalleryFilePickedState>
    implements _$$GalleryFilePickedStateCopyWith<$Res> {
  __$$GalleryFilePickedStateCopyWithImpl(_$GalleryFilePickedState _value,
      $Res Function(_$GalleryFilePickedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryFilePickedState implements GalleryFilePickedState {
  const _$GalleryFilePickedState();

  @override
  String toString() {
    return 'GalleryStates.filePicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryFilePickedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return filePicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return filePicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (filePicked != null) {
      return filePicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) {
    return filePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) {
    return filePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (filePicked != null) {
      return filePicked(this);
    }
    return orElse();
  }
}

abstract class GalleryFilePickedState implements GalleryStates {
  const factory GalleryFilePickedState() = _$GalleryFilePickedState;
}

/// @nodoc
abstract class _$$GalleryLoadedStateCopyWith<$Res> {
  factory _$$GalleryLoadedStateCopyWith(_$GalleryLoadedState value,
          $Res Function(_$GalleryLoadedState) then) =
      __$$GalleryLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Gallery gallery});
}

/// @nodoc
class __$$GalleryLoadedStateCopyWithImpl<$Res>
    extends _$GalleryStatesCopyWithImpl<$Res, _$GalleryLoadedState>
    implements _$$GalleryLoadedStateCopyWith<$Res> {
  __$$GalleryLoadedStateCopyWithImpl(
      _$GalleryLoadedState _value, $Res Function(_$GalleryLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gallery = null,
  }) {
    return _then(_$GalleryLoadedState(
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as Gallery,
    ));
  }
}

/// @nodoc

class _$GalleryLoadedState implements GalleryLoadedState {
  const _$GalleryLoadedState({required this.gallery});

  @override
  final Gallery gallery;

  @override
  String toString() {
    return 'GalleryStates.loaded(gallery: $gallery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryLoadedState &&
            (identical(other.gallery, gallery) || other.gallery == gallery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gallery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryLoadedStateCopyWith<_$GalleryLoadedState> get copyWith =>
      __$$GalleryLoadedStateCopyWithImpl<_$GalleryLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(gallery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(gallery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(gallery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GalleryLoadedState implements GalleryStates {
  const factory GalleryLoadedState({required final Gallery gallery}) =
      _$GalleryLoadedState;

  Gallery get gallery;
  @JsonKey(ignore: true)
  _$$GalleryLoadedStateCopyWith<_$GalleryLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryErrorStateCopyWith<$Res> {
  factory _$$GalleryErrorStateCopyWith(
          _$GalleryErrorState value, $Res Function(_$GalleryErrorState) then) =
      __$$GalleryErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GalleryErrorStateCopyWithImpl<$Res>
    extends _$GalleryStatesCopyWithImpl<$Res, _$GalleryErrorState>
    implements _$$GalleryErrorStateCopyWith<$Res> {
  __$$GalleryErrorStateCopyWithImpl(
      _$GalleryErrorState _value, $Res Function(_$GalleryErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GalleryErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GalleryErrorState implements GalleryErrorState {
  const _$GalleryErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GalleryStates.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryErrorStateCopyWith<_$GalleryErrorState> get copyWith =>
      __$$GalleryErrorStateCopyWithImpl<_$GalleryErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploaded,
    required TResult Function() filePicked,
    required TResult Function(Gallery gallery) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploaded,
    TResult? Function()? filePicked,
    TResult? Function(Gallery gallery)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploaded,
    TResult Function()? filePicked,
    TResult Function(Gallery gallery)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryInitialState value) initial,
    required TResult Function(GalleryLoadingState value) loading,
    required TResult Function(GalleryUploadedState value) uploaded,
    required TResult Function(GalleryFilePickedState value) filePicked,
    required TResult Function(GalleryLoadedState value) loaded,
    required TResult Function(GalleryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryInitialState value)? initial,
    TResult? Function(GalleryLoadingState value)? loading,
    TResult? Function(GalleryUploadedState value)? uploaded,
    TResult? Function(GalleryFilePickedState value)? filePicked,
    TResult? Function(GalleryLoadedState value)? loaded,
    TResult? Function(GalleryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryInitialState value)? initial,
    TResult Function(GalleryLoadingState value)? loading,
    TResult Function(GalleryUploadedState value)? uploaded,
    TResult Function(GalleryFilePickedState value)? filePicked,
    TResult Function(GalleryLoadedState value)? loaded,
    TResult Function(GalleryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GalleryErrorState implements GalleryStates {
  const factory GalleryErrorState({required final String errorMessage}) =
      _$GalleryErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GalleryErrorStateCopyWith<_$GalleryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
