// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) loading,
    required TResult Function(User user) userNotRegistered,
    required TResult Function(ApiError? e) error,
    required TResult Function(UserEntity user) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? loading,
    TResult? Function(User user)? userNotRegistered,
    TResult? Function(ApiError? e)? error,
    TResult? Function(UserEntity user)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? loading,
    TResult Function(User user)? userNotRegistered,
    TResult Function(ApiError? e)? error,
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_User value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_User value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$LoadingImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'UserState.loading(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) loading,
    required TResult Function(User user) userNotRegistered,
    required TResult Function(ApiError? e) error,
    required TResult Function(UserEntity user) user,
  }) {
    return loading(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? loading,
    TResult? Function(User user)? userNotRegistered,
    TResult? Function(ApiError? e)? error,
    TResult? Function(UserEntity user)? user,
  }) {
    return loading?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? loading,
    TResult Function(User user)? userNotRegistered,
    TResult Function(ApiError? e)? error,
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_User value) user,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_User value)? user,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading(final String msg) = _$LoadingImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotRegisteredImplCopyWith<$Res> {
  factory _$$UserNotRegisteredImplCopyWith(_$UserNotRegisteredImpl value,
          $Res Function(_$UserNotRegisteredImpl) then) =
      __$$UserNotRegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserNotRegisteredImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserNotRegisteredImpl>
    implements _$$UserNotRegisteredImplCopyWith<$Res> {
  __$$UserNotRegisteredImplCopyWithImpl(_$UserNotRegisteredImpl _value,
      $Res Function(_$UserNotRegisteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserNotRegisteredImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserNotRegisteredImpl implements _UserNotRegistered {
  const _$UserNotRegisteredImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.userNotRegistered(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotRegisteredImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotRegisteredImplCopyWith<_$UserNotRegisteredImpl> get copyWith =>
      __$$UserNotRegisteredImplCopyWithImpl<_$UserNotRegisteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) loading,
    required TResult Function(User user) userNotRegistered,
    required TResult Function(ApiError? e) error,
    required TResult Function(UserEntity user) user,
  }) {
    return userNotRegistered(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? loading,
    TResult? Function(User user)? userNotRegistered,
    TResult? Function(ApiError? e)? error,
    TResult? Function(UserEntity user)? user,
  }) {
    return userNotRegistered?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? loading,
    TResult Function(User user)? userNotRegistered,
    TResult Function(ApiError? e)? error,
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) {
    if (userNotRegistered != null) {
      return userNotRegistered(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_User value) user,
  }) {
    return userNotRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_User value)? user,
  }) {
    return userNotRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (userNotRegistered != null) {
      return userNotRegistered(this);
    }
    return orElse();
  }
}

abstract class _UserNotRegistered implements UserState {
  const factory _UserNotRegistered(final User user) = _$UserNotRegisteredImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserNotRegisteredImplCopyWith<_$UserNotRegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiError? e});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as ApiError?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.e);

  @override
  final ApiError? e;

  @override
  String toString() {
    return 'UserState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) loading,
    required TResult Function(User user) userNotRegistered,
    required TResult Function(ApiError? e) error,
    required TResult Function(UserEntity user) user,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? loading,
    TResult? Function(User user)? userNotRegistered,
    TResult? Function(ApiError? e)? error,
    TResult? Function(UserEntity user)? user,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? loading,
    TResult Function(User user)? userNotRegistered,
    TResult Function(ApiError? e)? error,
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_User value) user,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_User value)? user,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserState {
  const factory _Error(final ApiError? e) = _$ErrorImpl;

  ApiError? get e;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'UserState.user(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) loading,
    required TResult Function(User user) userNotRegistered,
    required TResult Function(ApiError? e) error,
    required TResult Function(UserEntity user) user,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? loading,
    TResult? Function(User user)? userNotRegistered,
    TResult? Function(ApiError? e)? error,
    TResult? Function(UserEntity user)? user,
  }) {
    return user?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? loading,
    TResult Function(User user)? userNotRegistered,
    TResult Function(ApiError? e)? error,
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_Error value) error,
    required TResult Function(_User value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_Error value)? error,
    TResult? Function(_User value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_Error value)? error,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements UserState {
  const factory _User(final UserEntity user) = _$UserImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
