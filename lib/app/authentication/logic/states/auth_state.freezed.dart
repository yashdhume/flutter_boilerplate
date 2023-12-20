// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$EmailNotVerifiedImplCopyWith<$Res> {
  factory _$$EmailNotVerifiedImplCopyWith(_$EmailNotVerifiedImpl value,
          $Res Function(_$EmailNotVerifiedImpl) then) =
      __$$EmailNotVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailNotVerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailNotVerifiedImpl>
    implements _$$EmailNotVerifiedImplCopyWith<$Res> {
  __$$EmailNotVerifiedImplCopyWithImpl(_$EmailNotVerifiedImpl _value,
      $Res Function(_$EmailNotVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailNotVerifiedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailNotVerifiedImpl implements _EmailNotVerified {
  const _$EmailNotVerifiedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthState.emailNotVerified(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailNotVerifiedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailNotVerifiedImplCopyWith<_$EmailNotVerifiedImpl> get copyWith =>
      __$$EmailNotVerifiedImplCopyWithImpl<_$EmailNotVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) {
    return emailNotVerified(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) {
    return emailNotVerified?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return emailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _EmailNotVerified implements AuthState {
  const factory _EmailNotVerified(final String email) = _$EmailNotVerifiedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailNotVerifiedImplCopyWith<_$EmailNotVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignUpImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.signUp(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) {
    return signUp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) {
    return signUp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthState {
  const factory _SignUp(final User user) = _$SignUpImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading(msg: $msg)';
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
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) {
    return loading(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) {
    return loading?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
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
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading(final String msg) = _$LoadingImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
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
      freezed == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.e);

  @override
  final Object? e;

  @override
  String toString() {
    return 'AuthState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
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
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final Object? e) = _$ErrorImpl;

  Object? get e;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedInImplCopyWith<$Res> {
  factory _$$UserLoggedInImplCopyWith(
          _$UserLoggedInImpl value, $Res Function(_$UserLoggedInImpl) then) =
      __$$UserLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$UserLoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserLoggedInImpl>
    implements _$$UserLoggedInImplCopyWith<$Res> {
  __$$UserLoggedInImplCopyWithImpl(
      _$UserLoggedInImpl _value, $Res Function(_$UserLoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoggedInImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$UserLoggedInImpl implements _UserLoggedIn {
  const _$UserLoggedInImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AuthState.userLoggedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      __$$UserLoggedInImplCopyWithImpl<_$UserLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function(String email) emailNotVerified,
    required TResult Function(User user) signUp,
    required TResult Function(String msg) loading,
    required TResult Function(Object? e) error,
    required TResult Function(UserEntity user) userLoggedIn,
  }) {
    return userLoggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function(String email)? emailNotVerified,
    TResult? Function(User user)? signUp,
    TResult? Function(String msg)? loading,
    TResult? Function(Object? e)? error,
    TResult? Function(UserEntity user)? userLoggedIn,
  }) {
    return userLoggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function(String email)? emailNotVerified,
    TResult Function(User user)? signUp,
    TResult Function(String msg)? loading,
    TResult Function(Object? e)? error,
    TResult Function(UserEntity user)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return userLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedIn implements AuthState {
  const factory _UserLoggedIn(final UserEntity user) = _$UserLoggedInImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
