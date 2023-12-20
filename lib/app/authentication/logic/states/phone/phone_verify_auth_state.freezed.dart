// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_verify_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneVerifyAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerifyAuthStateCopyWith<$Res> {
  factory $PhoneVerifyAuthStateCopyWith(PhoneVerifyAuthState value,
          $Res Function(PhoneVerifyAuthState) then) =
      _$PhoneVerifyAuthStateCopyWithImpl<$Res, PhoneVerifyAuthState>;
}

/// @nodoc
class _$PhoneVerifyAuthStateCopyWithImpl<$Res,
        $Val extends PhoneVerifyAuthState>
    implements $PhoneVerifyAuthStateCopyWith<$Res> {
  _$PhoneVerifyAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneAuthCredential credential});
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$PhoneVerifyAuthStateCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$CompletedImpl(
      null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential,
    ));
  }
}

/// @nodoc

class _$CompletedImpl implements _Completed {
  const _$CompletedImpl(this.credential);

  @override
  final PhoneAuthCredential credential;

  @override
  String toString() {
    return 'PhoneVerifyAuthState.completed(credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedImpl &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedImplCopyWith<_$CompletedImpl> get copyWith =>
      __$$CompletedImplCopyWithImpl<_$CompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) {
    return completed(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) {
    return completed?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements PhoneVerifyAuthState {
  const factory _Completed(final PhoneAuthCredential credential) =
      _$CompletedImpl;

  PhoneAuthCredential get credential;
  @JsonKey(ignore: true)
  _$$CompletedImplCopyWith<_$CompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseAuthException exception});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$PhoneVerifyAuthStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$FailedImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.exception);

  @override
  final FirebaseAuthException exception;

  @override
  String toString() {
    return 'PhoneVerifyAuthState.failed(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) {
    return failed(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) {
    return failed?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PhoneVerifyAuthState {
  const factory _Failed(final FirebaseAuthException exception) = _$FailedImpl;

  FirebaseAuthException get exception;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeSentImplCopyWith<$Res> {
  factory _$$CodeSentImplCopyWith(
          _$CodeSentImpl value, $Res Function(_$CodeSentImpl) then) =
      __$$CodeSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, int? resendToken});
}

/// @nodoc
class __$$CodeSentImplCopyWithImpl<$Res>
    extends _$PhoneVerifyAuthStateCopyWithImpl<$Res, _$CodeSentImpl>
    implements _$$CodeSentImplCopyWith<$Res> {
  __$$CodeSentImplCopyWithImpl(
      _$CodeSentImpl _value, $Res Function(_$CodeSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? resendToken = freezed,
  }) {
    return _then(_$CodeSentImpl(
      null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CodeSentImpl implements _CodeSent {
  const _$CodeSentImpl(this.verificationId, this.resendToken);

  @override
  final String verificationId;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'PhoneVerifyAuthState.codeSent(verificationId: $verificationId, resendToken: $resendToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSentImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, resendToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSentImplCopyWith<_$CodeSentImpl> get copyWith =>
      __$$CodeSentImplCopyWithImpl<_$CodeSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) {
    return codeSent(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) {
    return codeSent?.call(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements PhoneVerifyAuthState {
  const factory _CodeSent(final String verificationId, final int? resendToken) =
      _$CodeSentImpl;

  String get verificationId;
  int? get resendToken;
  @JsonKey(ignore: true)
  _$$CodeSentImplCopyWith<_$CodeSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeRetrievalTimeoutImplCopyWith<$Res> {
  factory _$$CodeRetrievalTimeoutImplCopyWith(_$CodeRetrievalTimeoutImpl value,
          $Res Function(_$CodeRetrievalTimeoutImpl) then) =
      __$$CodeRetrievalTimeoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId});
}

/// @nodoc
class __$$CodeRetrievalTimeoutImplCopyWithImpl<$Res>
    extends _$PhoneVerifyAuthStateCopyWithImpl<$Res, _$CodeRetrievalTimeoutImpl>
    implements _$$CodeRetrievalTimeoutImplCopyWith<$Res> {
  __$$CodeRetrievalTimeoutImplCopyWithImpl(_$CodeRetrievalTimeoutImpl _value,
      $Res Function(_$CodeRetrievalTimeoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
  }) {
    return _then(_$CodeRetrievalTimeoutImpl(
      null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeRetrievalTimeoutImpl implements _CodeRetrievalTimeout {
  const _$CodeRetrievalTimeoutImpl(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'PhoneVerifyAuthState.codeRetrievalTimeout(verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeRetrievalTimeoutImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeRetrievalTimeoutImplCopyWith<_$CodeRetrievalTimeoutImpl>
      get copyWith =>
          __$$CodeRetrievalTimeoutImplCopyWithImpl<_$CodeRetrievalTimeoutImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) {
    return codeRetrievalTimeout(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) {
    return codeRetrievalTimeout?.call(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) {
    if (codeRetrievalTimeout != null) {
      return codeRetrievalTimeout(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) {
    return codeRetrievalTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) {
    return codeRetrievalTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) {
    if (codeRetrievalTimeout != null) {
      return codeRetrievalTimeout(this);
    }
    return orElse();
  }
}

abstract class _CodeRetrievalTimeout implements PhoneVerifyAuthState {
  const factory _CodeRetrievalTimeout(final String verificationId) =
      _$CodeRetrievalTimeoutImpl;

  String get verificationId;
  @JsonKey(ignore: true)
  _$$CodeRetrievalTimeoutImplCopyWith<_$CodeRetrievalTimeoutImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PhoneVerifyAuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'PhoneVerifyAuthState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PhoneVerifyAuthState {
  const factory _Error(final Object error, final StackTrace stackTrace) =
      _$ErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NullUserErrorImplCopyWith<$Res> {
  factory _$$NullUserErrorImplCopyWith(
          _$NullUserErrorImpl value, $Res Function(_$NullUserErrorImpl) then) =
      __$$NullUserErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NullUserErrorImplCopyWithImpl<$Res>
    extends _$PhoneVerifyAuthStateCopyWithImpl<$Res, _$NullUserErrorImpl>
    implements _$$NullUserErrorImplCopyWith<$Res> {
  __$$NullUserErrorImplCopyWithImpl(
      _$NullUserErrorImpl _value, $Res Function(_$NullUserErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NullUserErrorImpl implements _NullUserError {
  const _$NullUserErrorImpl();

  @override
  String toString() {
    return 'PhoneVerifyAuthState.nullUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NullUserErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(FirebaseAuthException exception) failed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) codeRetrievalTimeout,
    required TResult Function(Object error, StackTrace stackTrace) error,
    required TResult Function() nullUser,
  }) {
    return nullUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(FirebaseAuthException exception)? failed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? codeRetrievalTimeout,
    TResult? Function(Object error, StackTrace stackTrace)? error,
    TResult? Function()? nullUser,
  }) {
    return nullUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(FirebaseAuthException exception)? failed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? codeRetrievalTimeout,
    TResult Function(Object error, StackTrace stackTrace)? error,
    TResult Function()? nullUser,
    required TResult orElse(),
  }) {
    if (nullUser != null) {
      return nullUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_CodeRetrievalTimeout value) codeRetrievalTimeout,
    required TResult Function(_Error value) error,
    required TResult Function(_NullUserError value) nullUser,
  }) {
    return nullUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult? Function(_Error value)? error,
    TResult? Function(_NullUserError value)? nullUser,
  }) {
    return nullUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_CodeRetrievalTimeout value)? codeRetrievalTimeout,
    TResult Function(_Error value)? error,
    TResult Function(_NullUserError value)? nullUser,
    required TResult orElse(),
  }) {
    if (nullUser != null) {
      return nullUser(this);
    }
    return orElse();
  }
}

abstract class _NullUserError implements PhoneVerifyAuthState {
  const factory _NullUserError() = _$NullUserErrorImpl;
}
