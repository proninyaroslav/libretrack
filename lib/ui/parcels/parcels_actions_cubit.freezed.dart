// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'parcels_actions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParcelsActionsStateTearOff {
  const _$ParcelsActionsStateTearOff();

  ParcelsActionsStateInitial initial() {
    return const ParcelsActionsStateInitial();
  }

  ParcelsActionsStateDeleting deleting() {
    return const ParcelsActionsStateDeleting();
  }

  ParcelsActionsStateDeleteSuccess deleteSuccess() {
    return const ParcelsActionsStateDeleteSuccess();
  }

  ParcelsActionsStateDeleteFailed deleteFailed(
      {required StorageError error, required int parcelsCount}) {
    return ParcelsActionsStateDeleteFailed(
      error: error,
      parcelsCount: parcelsCount,
    );
  }

  ParcelsActionsStateMarkingAsRead markingAsRead() {
    return const ParcelsActionsStateMarkingAsRead();
  }

  ParcelsActionsStateMarkAsReadSuccess markAsReadSuccess() {
    return const ParcelsActionsStateMarkAsReadSuccess();
  }

  ParcelsActionsStateMarkAsReadFailed markAsReadFailed(
      {required StorageError error, required int parcelsCount}) {
    return ParcelsActionsStateMarkAsReadFailed(
      error: error,
      parcelsCount: parcelsCount,
    );
  }

  ParcelsActionsStateMovingToActive movingToActive() {
    return const ParcelsActionsStateMovingToActive();
  }

  ParcelsActionsStateMoveToActiveSuccess moveToActiveSuccess() {
    return const ParcelsActionsStateMoveToActiveSuccess();
  }

  ParcelsActionsStateMoveToActiveFailed moveToActiveFailed(
      {required StorageError error, required int parcelsCount}) {
    return ParcelsActionsStateMoveToActiveFailed(
      error: error,
      parcelsCount: parcelsCount,
    );
  }

  ParcelsActionsStateMovingToArchive movingToArchive() {
    return const ParcelsActionsStateMovingToArchive();
  }

  ParcelsActionsStateMoveToArchiveSuccess moveToArchiveSuccess() {
    return const ParcelsActionsStateMoveToArchiveSuccess();
  }

  ParcelsActionsStateMoveToArchiveFailed moveToArchiveFailed(
      {required StorageError error, required int parcelsCount}) {
    return ParcelsActionsStateMoveToArchiveFailed(
      error: error,
      parcelsCount: parcelsCount,
    );
  }

  ParcelsActionsStateRefreshing refreshing() {
    return const ParcelsActionsStateRefreshing();
  }

  ParcelsActionsStateRefreshSuccess refreshSuccess() {
    return const ParcelsActionsStateRefreshSuccess();
  }

  ParcelsActionsStateRefreshFailed refreshFailed(
      {required Map<String, EnqueueOneshotError> errors}) {
    return ParcelsActionsStateRefreshFailed(
      errors: errors,
    );
  }

  ParcelsActionsStateRefreshFreqLimited refreshFreqLimited(
      {required Duration remainingTime}) {
    return ParcelsActionsStateRefreshFreqLimited(
      remainingTime: remainingTime,
    );
  }

  ParcelsActionsStateSharingString sharingString() {
    return const ParcelsActionsStateSharingString();
  }

  ParcelsActionsStateShareStringSuccess shareStringSuccess(
      {required String text}) {
    return ParcelsActionsStateShareStringSuccess(
      text: text,
    );
  }

  ParcelsActionsStateCopyingTrack copyingTrack() {
    return const ParcelsActionsStateCopyingTrack();
  }

  ParcelsActionsStateCopyTrackSuccess copyTrackSuccess(
      {required String trackNumbers}) {
    return ParcelsActionsStateCopyTrackSuccess(
      trackNumbers: trackNumbers,
    );
  }
}

/// @nodoc
const $ParcelsActionsState = _$ParcelsActionsStateTearOff();

/// @nodoc
mixin _$ParcelsActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateCopyWith<$Res> {
  factory $ParcelsActionsStateCopyWith(
          ParcelsActionsState value, $Res Function(ParcelsActionsState) then) =
      _$ParcelsActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateCopyWith<$Res> {
  _$ParcelsActionsStateCopyWithImpl(this._value, this._then);

  final ParcelsActionsState _value;
  // ignore: unused_field
  final $Res Function(ParcelsActionsState) _then;
}

/// @nodoc
abstract class $ParcelsActionsStateInitialCopyWith<$Res> {
  factory $ParcelsActionsStateInitialCopyWith(ParcelsActionsStateInitial value,
          $Res Function(ParcelsActionsStateInitial) then) =
      _$ParcelsActionsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateInitialCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateInitialCopyWith<$Res> {
  _$ParcelsActionsStateInitialCopyWithImpl(ParcelsActionsStateInitial _value,
      $Res Function(ParcelsActionsStateInitial) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateInitial));

  @override
  ParcelsActionsStateInitial get _value =>
      super._value as ParcelsActionsStateInitial;
}

/// @nodoc

class _$ParcelsActionsStateInitial implements ParcelsActionsStateInitial {
  const _$ParcelsActionsStateInitial();

  @override
  String toString() {
    return 'ParcelsActionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsActionsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
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
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateInitial implements ParcelsActionsState {
  const factory ParcelsActionsStateInitial() = _$ParcelsActionsStateInitial;
}

/// @nodoc
abstract class $ParcelsActionsStateDeletingCopyWith<$Res> {
  factory $ParcelsActionsStateDeletingCopyWith(
          ParcelsActionsStateDeleting value,
          $Res Function(ParcelsActionsStateDeleting) then) =
      _$ParcelsActionsStateDeletingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateDeletingCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateDeletingCopyWith<$Res> {
  _$ParcelsActionsStateDeletingCopyWithImpl(ParcelsActionsStateDeleting _value,
      $Res Function(ParcelsActionsStateDeleting) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateDeleting));

  @override
  ParcelsActionsStateDeleting get _value =>
      super._value as ParcelsActionsStateDeleting;
}

/// @nodoc

class _$ParcelsActionsStateDeleting implements ParcelsActionsStateDeleting {
  const _$ParcelsActionsStateDeleting();

  @override
  String toString() {
    return 'ParcelsActionsState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsActionsStateDeleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateDeleting implements ParcelsActionsState {
  const factory ParcelsActionsStateDeleting() = _$ParcelsActionsStateDeleting;
}

/// @nodoc
abstract class $ParcelsActionsStateDeleteSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateDeleteSuccessCopyWith(
          ParcelsActionsStateDeleteSuccess value,
          $Res Function(ParcelsActionsStateDeleteSuccess) then) =
      _$ParcelsActionsStateDeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateDeleteSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateDeleteSuccessCopyWith<$Res> {
  _$ParcelsActionsStateDeleteSuccessCopyWithImpl(
      ParcelsActionsStateDeleteSuccess _value,
      $Res Function(ParcelsActionsStateDeleteSuccess) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateDeleteSuccess));

  @override
  ParcelsActionsStateDeleteSuccess get _value =>
      super._value as ParcelsActionsStateDeleteSuccess;
}

/// @nodoc

class _$ParcelsActionsStateDeleteSuccess
    implements ParcelsActionsStateDeleteSuccess {
  const _$ParcelsActionsStateDeleteSuccess();

  @override
  String toString() {
    return 'ParcelsActionsState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateDeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateDeleteSuccess implements ParcelsActionsState {
  const factory ParcelsActionsStateDeleteSuccess() =
      _$ParcelsActionsStateDeleteSuccess;
}

/// @nodoc
abstract class $ParcelsActionsStateDeleteFailedCopyWith<$Res> {
  factory $ParcelsActionsStateDeleteFailedCopyWith(
          ParcelsActionsStateDeleteFailed value,
          $Res Function(ParcelsActionsStateDeleteFailed) then) =
      _$ParcelsActionsStateDeleteFailedCopyWithImpl<$Res>;
  $Res call({StorageError error, int parcelsCount});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ParcelsActionsStateDeleteFailedCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateDeleteFailedCopyWith<$Res> {
  _$ParcelsActionsStateDeleteFailedCopyWithImpl(
      ParcelsActionsStateDeleteFailed _value,
      $Res Function(ParcelsActionsStateDeleteFailed) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateDeleteFailed));

  @override
  ParcelsActionsStateDeleteFailed get _value =>
      super._value as ParcelsActionsStateDeleteFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? parcelsCount = freezed,
  }) {
    return _then(ParcelsActionsStateDeleteFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
      parcelsCount: parcelsCount == freezed
          ? _value.parcelsCount
          : parcelsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParcelsActionsStateDeleteFailed
    implements ParcelsActionsStateDeleteFailed {
  const _$ParcelsActionsStateDeleteFailed(
      {required this.error, required this.parcelsCount});

  @override
  final StorageError error;
  @override
  final int parcelsCount;

  @override
  String toString() {
    return 'ParcelsActionsState.deleteFailed(error: $error, parcelsCount: $parcelsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateDeleteFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.parcelsCount, parcelsCount) ||
                const DeepCollectionEquality()
                    .equals(other.parcelsCount, parcelsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(parcelsCount);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateDeleteFailedCopyWith<ParcelsActionsStateDeleteFailed>
      get copyWith => _$ParcelsActionsStateDeleteFailedCopyWithImpl<
          ParcelsActionsStateDeleteFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return deleteFailed(error, parcelsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(error, parcelsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateDeleteFailed implements ParcelsActionsState {
  const factory ParcelsActionsStateDeleteFailed(
      {required StorageError error,
      required int parcelsCount}) = _$ParcelsActionsStateDeleteFailed;

  StorageError get error => throw _privateConstructorUsedError;
  int get parcelsCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateDeleteFailedCopyWith<ParcelsActionsStateDeleteFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateMarkingAsReadCopyWith<$Res> {
  factory $ParcelsActionsStateMarkingAsReadCopyWith(
          ParcelsActionsStateMarkingAsRead value,
          $Res Function(ParcelsActionsStateMarkingAsRead) then) =
      _$ParcelsActionsStateMarkingAsReadCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateMarkingAsReadCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMarkingAsReadCopyWith<$Res> {
  _$ParcelsActionsStateMarkingAsReadCopyWithImpl(
      ParcelsActionsStateMarkingAsRead _value,
      $Res Function(ParcelsActionsStateMarkingAsRead) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateMarkingAsRead));

  @override
  ParcelsActionsStateMarkingAsRead get _value =>
      super._value as ParcelsActionsStateMarkingAsRead;
}

/// @nodoc

class _$ParcelsActionsStateMarkingAsRead
    implements ParcelsActionsStateMarkingAsRead {
  const _$ParcelsActionsStateMarkingAsRead();

  @override
  String toString() {
    return 'ParcelsActionsState.markingAsRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMarkingAsRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return markingAsRead();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (markingAsRead != null) {
      return markingAsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return markingAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (markingAsRead != null) {
      return markingAsRead(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMarkingAsRead implements ParcelsActionsState {
  const factory ParcelsActionsStateMarkingAsRead() =
      _$ParcelsActionsStateMarkingAsRead;
}

/// @nodoc
abstract class $ParcelsActionsStateMarkAsReadSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateMarkAsReadSuccessCopyWith(
          ParcelsActionsStateMarkAsReadSuccess value,
          $Res Function(ParcelsActionsStateMarkAsReadSuccess) then) =
      _$ParcelsActionsStateMarkAsReadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateMarkAsReadSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMarkAsReadSuccessCopyWith<$Res> {
  _$ParcelsActionsStateMarkAsReadSuccessCopyWithImpl(
      ParcelsActionsStateMarkAsReadSuccess _value,
      $Res Function(ParcelsActionsStateMarkAsReadSuccess) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateMarkAsReadSuccess));

  @override
  ParcelsActionsStateMarkAsReadSuccess get _value =>
      super._value as ParcelsActionsStateMarkAsReadSuccess;
}

/// @nodoc

class _$ParcelsActionsStateMarkAsReadSuccess
    implements ParcelsActionsStateMarkAsReadSuccess {
  const _$ParcelsActionsStateMarkAsReadSuccess();

  @override
  String toString() {
    return 'ParcelsActionsState.markAsReadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMarkAsReadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return markAsReadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (markAsReadSuccess != null) {
      return markAsReadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return markAsReadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (markAsReadSuccess != null) {
      return markAsReadSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMarkAsReadSuccess
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMarkAsReadSuccess() =
      _$ParcelsActionsStateMarkAsReadSuccess;
}

/// @nodoc
abstract class $ParcelsActionsStateMarkAsReadFailedCopyWith<$Res> {
  factory $ParcelsActionsStateMarkAsReadFailedCopyWith(
          ParcelsActionsStateMarkAsReadFailed value,
          $Res Function(ParcelsActionsStateMarkAsReadFailed) then) =
      _$ParcelsActionsStateMarkAsReadFailedCopyWithImpl<$Res>;
  $Res call({StorageError error, int parcelsCount});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ParcelsActionsStateMarkAsReadFailedCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMarkAsReadFailedCopyWith<$Res> {
  _$ParcelsActionsStateMarkAsReadFailedCopyWithImpl(
      ParcelsActionsStateMarkAsReadFailed _value,
      $Res Function(ParcelsActionsStateMarkAsReadFailed) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateMarkAsReadFailed));

  @override
  ParcelsActionsStateMarkAsReadFailed get _value =>
      super._value as ParcelsActionsStateMarkAsReadFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? parcelsCount = freezed,
  }) {
    return _then(ParcelsActionsStateMarkAsReadFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
      parcelsCount: parcelsCount == freezed
          ? _value.parcelsCount
          : parcelsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParcelsActionsStateMarkAsReadFailed
    implements ParcelsActionsStateMarkAsReadFailed {
  const _$ParcelsActionsStateMarkAsReadFailed(
      {required this.error, required this.parcelsCount});

  @override
  final StorageError error;
  @override
  final int parcelsCount;

  @override
  String toString() {
    return 'ParcelsActionsState.markAsReadFailed(error: $error, parcelsCount: $parcelsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMarkAsReadFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.parcelsCount, parcelsCount) ||
                const DeepCollectionEquality()
                    .equals(other.parcelsCount, parcelsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(parcelsCount);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateMarkAsReadFailedCopyWith<
          ParcelsActionsStateMarkAsReadFailed>
      get copyWith => _$ParcelsActionsStateMarkAsReadFailedCopyWithImpl<
          ParcelsActionsStateMarkAsReadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return markAsReadFailed(error, parcelsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (markAsReadFailed != null) {
      return markAsReadFailed(error, parcelsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return markAsReadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (markAsReadFailed != null) {
      return markAsReadFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMarkAsReadFailed
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMarkAsReadFailed(
      {required StorageError error,
      required int parcelsCount}) = _$ParcelsActionsStateMarkAsReadFailed;

  StorageError get error => throw _privateConstructorUsedError;
  int get parcelsCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateMarkAsReadFailedCopyWith<
          ParcelsActionsStateMarkAsReadFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateMovingToActiveCopyWith<$Res> {
  factory $ParcelsActionsStateMovingToActiveCopyWith(
          ParcelsActionsStateMovingToActive value,
          $Res Function(ParcelsActionsStateMovingToActive) then) =
      _$ParcelsActionsStateMovingToActiveCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateMovingToActiveCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMovingToActiveCopyWith<$Res> {
  _$ParcelsActionsStateMovingToActiveCopyWithImpl(
      ParcelsActionsStateMovingToActive _value,
      $Res Function(ParcelsActionsStateMovingToActive) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateMovingToActive));

  @override
  ParcelsActionsStateMovingToActive get _value =>
      super._value as ParcelsActionsStateMovingToActive;
}

/// @nodoc

class _$ParcelsActionsStateMovingToActive
    implements ParcelsActionsStateMovingToActive {
  const _$ParcelsActionsStateMovingToActive();

  @override
  String toString() {
    return 'ParcelsActionsState.movingToActive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMovingToActive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return movingToActive();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (movingToActive != null) {
      return movingToActive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return movingToActive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (movingToActive != null) {
      return movingToActive(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMovingToActive
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMovingToActive() =
      _$ParcelsActionsStateMovingToActive;
}

/// @nodoc
abstract class $ParcelsActionsStateMoveToActiveSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateMoveToActiveSuccessCopyWith(
          ParcelsActionsStateMoveToActiveSuccess value,
          $Res Function(ParcelsActionsStateMoveToActiveSuccess) then) =
      _$ParcelsActionsStateMoveToActiveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateMoveToActiveSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMoveToActiveSuccessCopyWith<$Res> {
  _$ParcelsActionsStateMoveToActiveSuccessCopyWithImpl(
      ParcelsActionsStateMoveToActiveSuccess _value,
      $Res Function(ParcelsActionsStateMoveToActiveSuccess) _then)
      : super(
            _value, (v) => _then(v as ParcelsActionsStateMoveToActiveSuccess));

  @override
  ParcelsActionsStateMoveToActiveSuccess get _value =>
      super._value as ParcelsActionsStateMoveToActiveSuccess;
}

/// @nodoc

class _$ParcelsActionsStateMoveToActiveSuccess
    implements ParcelsActionsStateMoveToActiveSuccess {
  const _$ParcelsActionsStateMoveToActiveSuccess();

  @override
  String toString() {
    return 'ParcelsActionsState.moveToActiveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMoveToActiveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return moveToActiveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToActiveSuccess != null) {
      return moveToActiveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return moveToActiveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToActiveSuccess != null) {
      return moveToActiveSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMoveToActiveSuccess
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMoveToActiveSuccess() =
      _$ParcelsActionsStateMoveToActiveSuccess;
}

/// @nodoc
abstract class $ParcelsActionsStateMoveToActiveFailedCopyWith<$Res> {
  factory $ParcelsActionsStateMoveToActiveFailedCopyWith(
          ParcelsActionsStateMoveToActiveFailed value,
          $Res Function(ParcelsActionsStateMoveToActiveFailed) then) =
      _$ParcelsActionsStateMoveToActiveFailedCopyWithImpl<$Res>;
  $Res call({StorageError error, int parcelsCount});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ParcelsActionsStateMoveToActiveFailedCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMoveToActiveFailedCopyWith<$Res> {
  _$ParcelsActionsStateMoveToActiveFailedCopyWithImpl(
      ParcelsActionsStateMoveToActiveFailed _value,
      $Res Function(ParcelsActionsStateMoveToActiveFailed) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateMoveToActiveFailed));

  @override
  ParcelsActionsStateMoveToActiveFailed get _value =>
      super._value as ParcelsActionsStateMoveToActiveFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? parcelsCount = freezed,
  }) {
    return _then(ParcelsActionsStateMoveToActiveFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
      parcelsCount: parcelsCount == freezed
          ? _value.parcelsCount
          : parcelsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParcelsActionsStateMoveToActiveFailed
    implements ParcelsActionsStateMoveToActiveFailed {
  const _$ParcelsActionsStateMoveToActiveFailed(
      {required this.error, required this.parcelsCount});

  @override
  final StorageError error;
  @override
  final int parcelsCount;

  @override
  String toString() {
    return 'ParcelsActionsState.moveToActiveFailed(error: $error, parcelsCount: $parcelsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMoveToActiveFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.parcelsCount, parcelsCount) ||
                const DeepCollectionEquality()
                    .equals(other.parcelsCount, parcelsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(parcelsCount);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateMoveToActiveFailedCopyWith<
          ParcelsActionsStateMoveToActiveFailed>
      get copyWith => _$ParcelsActionsStateMoveToActiveFailedCopyWithImpl<
          ParcelsActionsStateMoveToActiveFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return moveToActiveFailed(error, parcelsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToActiveFailed != null) {
      return moveToActiveFailed(error, parcelsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return moveToActiveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToActiveFailed != null) {
      return moveToActiveFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMoveToActiveFailed
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMoveToActiveFailed(
      {required StorageError error,
      required int parcelsCount}) = _$ParcelsActionsStateMoveToActiveFailed;

  StorageError get error => throw _privateConstructorUsedError;
  int get parcelsCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateMoveToActiveFailedCopyWith<
          ParcelsActionsStateMoveToActiveFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateMovingToArchiveCopyWith<$Res> {
  factory $ParcelsActionsStateMovingToArchiveCopyWith(
          ParcelsActionsStateMovingToArchive value,
          $Res Function(ParcelsActionsStateMovingToArchive) then) =
      _$ParcelsActionsStateMovingToArchiveCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateMovingToArchiveCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMovingToArchiveCopyWith<$Res> {
  _$ParcelsActionsStateMovingToArchiveCopyWithImpl(
      ParcelsActionsStateMovingToArchive _value,
      $Res Function(ParcelsActionsStateMovingToArchive) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateMovingToArchive));

  @override
  ParcelsActionsStateMovingToArchive get _value =>
      super._value as ParcelsActionsStateMovingToArchive;
}

/// @nodoc

class _$ParcelsActionsStateMovingToArchive
    implements ParcelsActionsStateMovingToArchive {
  const _$ParcelsActionsStateMovingToArchive();

  @override
  String toString() {
    return 'ParcelsActionsState.movingToArchive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMovingToArchive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return movingToArchive();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (movingToArchive != null) {
      return movingToArchive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return movingToArchive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (movingToArchive != null) {
      return movingToArchive(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMovingToArchive
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMovingToArchive() =
      _$ParcelsActionsStateMovingToArchive;
}

/// @nodoc
abstract class $ParcelsActionsStateMoveToArchiveSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateMoveToArchiveSuccessCopyWith(
          ParcelsActionsStateMoveToArchiveSuccess value,
          $Res Function(ParcelsActionsStateMoveToArchiveSuccess) then) =
      _$ParcelsActionsStateMoveToArchiveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateMoveToArchiveSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMoveToArchiveSuccessCopyWith<$Res> {
  _$ParcelsActionsStateMoveToArchiveSuccessCopyWithImpl(
      ParcelsActionsStateMoveToArchiveSuccess _value,
      $Res Function(ParcelsActionsStateMoveToArchiveSuccess) _then)
      : super(
            _value, (v) => _then(v as ParcelsActionsStateMoveToArchiveSuccess));

  @override
  ParcelsActionsStateMoveToArchiveSuccess get _value =>
      super._value as ParcelsActionsStateMoveToArchiveSuccess;
}

/// @nodoc

class _$ParcelsActionsStateMoveToArchiveSuccess
    implements ParcelsActionsStateMoveToArchiveSuccess {
  const _$ParcelsActionsStateMoveToArchiveSuccess();

  @override
  String toString() {
    return 'ParcelsActionsState.moveToArchiveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMoveToArchiveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return moveToArchiveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToArchiveSuccess != null) {
      return moveToArchiveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return moveToArchiveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToArchiveSuccess != null) {
      return moveToArchiveSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMoveToArchiveSuccess
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMoveToArchiveSuccess() =
      _$ParcelsActionsStateMoveToArchiveSuccess;
}

/// @nodoc
abstract class $ParcelsActionsStateMoveToArchiveFailedCopyWith<$Res> {
  factory $ParcelsActionsStateMoveToArchiveFailedCopyWith(
          ParcelsActionsStateMoveToArchiveFailed value,
          $Res Function(ParcelsActionsStateMoveToArchiveFailed) then) =
      _$ParcelsActionsStateMoveToArchiveFailedCopyWithImpl<$Res>;
  $Res call({StorageError error, int parcelsCount});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ParcelsActionsStateMoveToArchiveFailedCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateMoveToArchiveFailedCopyWith<$Res> {
  _$ParcelsActionsStateMoveToArchiveFailedCopyWithImpl(
      ParcelsActionsStateMoveToArchiveFailed _value,
      $Res Function(ParcelsActionsStateMoveToArchiveFailed) _then)
      : super(
            _value, (v) => _then(v as ParcelsActionsStateMoveToArchiveFailed));

  @override
  ParcelsActionsStateMoveToArchiveFailed get _value =>
      super._value as ParcelsActionsStateMoveToArchiveFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? parcelsCount = freezed,
  }) {
    return _then(ParcelsActionsStateMoveToArchiveFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
      parcelsCount: parcelsCount == freezed
          ? _value.parcelsCount
          : parcelsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParcelsActionsStateMoveToArchiveFailed
    implements ParcelsActionsStateMoveToArchiveFailed {
  const _$ParcelsActionsStateMoveToArchiveFailed(
      {required this.error, required this.parcelsCount});

  @override
  final StorageError error;
  @override
  final int parcelsCount;

  @override
  String toString() {
    return 'ParcelsActionsState.moveToArchiveFailed(error: $error, parcelsCount: $parcelsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateMoveToArchiveFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.parcelsCount, parcelsCount) ||
                const DeepCollectionEquality()
                    .equals(other.parcelsCount, parcelsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(parcelsCount);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateMoveToArchiveFailedCopyWith<
          ParcelsActionsStateMoveToArchiveFailed>
      get copyWith => _$ParcelsActionsStateMoveToArchiveFailedCopyWithImpl<
          ParcelsActionsStateMoveToArchiveFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return moveToArchiveFailed(error, parcelsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToArchiveFailed != null) {
      return moveToArchiveFailed(error, parcelsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return moveToArchiveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (moveToArchiveFailed != null) {
      return moveToArchiveFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateMoveToArchiveFailed
    implements ParcelsActionsState {
  const factory ParcelsActionsStateMoveToArchiveFailed(
      {required StorageError error,
      required int parcelsCount}) = _$ParcelsActionsStateMoveToArchiveFailed;

  StorageError get error => throw _privateConstructorUsedError;
  int get parcelsCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateMoveToArchiveFailedCopyWith<
          ParcelsActionsStateMoveToArchiveFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateRefreshingCopyWith<$Res> {
  factory $ParcelsActionsStateRefreshingCopyWith(
          ParcelsActionsStateRefreshing value,
          $Res Function(ParcelsActionsStateRefreshing) then) =
      _$ParcelsActionsStateRefreshingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateRefreshingCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateRefreshingCopyWith<$Res> {
  _$ParcelsActionsStateRefreshingCopyWithImpl(
      ParcelsActionsStateRefreshing _value,
      $Res Function(ParcelsActionsStateRefreshing) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateRefreshing));

  @override
  ParcelsActionsStateRefreshing get _value =>
      super._value as ParcelsActionsStateRefreshing;
}

/// @nodoc

class _$ParcelsActionsStateRefreshing implements ParcelsActionsStateRefreshing {
  const _$ParcelsActionsStateRefreshing();

  @override
  String toString() {
    return 'ParcelsActionsState.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsActionsStateRefreshing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateRefreshing implements ParcelsActionsState {
  const factory ParcelsActionsStateRefreshing() =
      _$ParcelsActionsStateRefreshing;
}

/// @nodoc
abstract class $ParcelsActionsStateRefreshSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateRefreshSuccessCopyWith(
          ParcelsActionsStateRefreshSuccess value,
          $Res Function(ParcelsActionsStateRefreshSuccess) then) =
      _$ParcelsActionsStateRefreshSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateRefreshSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateRefreshSuccessCopyWith<$Res> {
  _$ParcelsActionsStateRefreshSuccessCopyWithImpl(
      ParcelsActionsStateRefreshSuccess _value,
      $Res Function(ParcelsActionsStateRefreshSuccess) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateRefreshSuccess));

  @override
  ParcelsActionsStateRefreshSuccess get _value =>
      super._value as ParcelsActionsStateRefreshSuccess;
}

/// @nodoc

class _$ParcelsActionsStateRefreshSuccess
    implements ParcelsActionsStateRefreshSuccess {
  const _$ParcelsActionsStateRefreshSuccess();

  @override
  String toString() {
    return 'ParcelsActionsState.refreshSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateRefreshSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return refreshSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return refreshSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateRefreshSuccess
    implements ParcelsActionsState {
  const factory ParcelsActionsStateRefreshSuccess() =
      _$ParcelsActionsStateRefreshSuccess;
}

/// @nodoc
abstract class $ParcelsActionsStateRefreshFailedCopyWith<$Res> {
  factory $ParcelsActionsStateRefreshFailedCopyWith(
          ParcelsActionsStateRefreshFailed value,
          $Res Function(ParcelsActionsStateRefreshFailed) then) =
      _$ParcelsActionsStateRefreshFailedCopyWithImpl<$Res>;
  $Res call({Map<String, EnqueueOneshotError> errors});
}

/// @nodoc
class _$ParcelsActionsStateRefreshFailedCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateRefreshFailedCopyWith<$Res> {
  _$ParcelsActionsStateRefreshFailedCopyWithImpl(
      ParcelsActionsStateRefreshFailed _value,
      $Res Function(ParcelsActionsStateRefreshFailed) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateRefreshFailed));

  @override
  ParcelsActionsStateRefreshFailed get _value =>
      super._value as ParcelsActionsStateRefreshFailed;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(ParcelsActionsStateRefreshFailed(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, EnqueueOneshotError>,
    ));
  }
}

/// @nodoc

class _$ParcelsActionsStateRefreshFailed
    implements ParcelsActionsStateRefreshFailed {
  const _$ParcelsActionsStateRefreshFailed({required this.errors});

  @override
  final Map<String, EnqueueOneshotError> errors;

  @override
  String toString() {
    return 'ParcelsActionsState.refreshFailed(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateRefreshFailed &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateRefreshFailedCopyWith<ParcelsActionsStateRefreshFailed>
      get copyWith => _$ParcelsActionsStateRefreshFailedCopyWithImpl<
          ParcelsActionsStateRefreshFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return refreshFailed(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshFailed != null) {
      return refreshFailed(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return refreshFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshFailed != null) {
      return refreshFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateRefreshFailed implements ParcelsActionsState {
  const factory ParcelsActionsStateRefreshFailed(
          {required Map<String, EnqueueOneshotError> errors}) =
      _$ParcelsActionsStateRefreshFailed;

  Map<String, EnqueueOneshotError> get errors =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateRefreshFailedCopyWith<ParcelsActionsStateRefreshFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateRefreshFreqLimitedCopyWith<$Res> {
  factory $ParcelsActionsStateRefreshFreqLimitedCopyWith(
          ParcelsActionsStateRefreshFreqLimited value,
          $Res Function(ParcelsActionsStateRefreshFreqLimited) then) =
      _$ParcelsActionsStateRefreshFreqLimitedCopyWithImpl<$Res>;
  $Res call({Duration remainingTime});
}

/// @nodoc
class _$ParcelsActionsStateRefreshFreqLimitedCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateRefreshFreqLimitedCopyWith<$Res> {
  _$ParcelsActionsStateRefreshFreqLimitedCopyWithImpl(
      ParcelsActionsStateRefreshFreqLimited _value,
      $Res Function(ParcelsActionsStateRefreshFreqLimited) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateRefreshFreqLimited));

  @override
  ParcelsActionsStateRefreshFreqLimited get _value =>
      super._value as ParcelsActionsStateRefreshFreqLimited;

  @override
  $Res call({
    Object? remainingTime = freezed,
  }) {
    return _then(ParcelsActionsStateRefreshFreqLimited(
      remainingTime: remainingTime == freezed
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$ParcelsActionsStateRefreshFreqLimited
    implements ParcelsActionsStateRefreshFreqLimited {
  const _$ParcelsActionsStateRefreshFreqLimited({required this.remainingTime});

  @override
  final Duration remainingTime;

  @override
  String toString() {
    return 'ParcelsActionsState.refreshFreqLimited(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateRefreshFreqLimited &&
            (identical(other.remainingTime, remainingTime) ||
                const DeepCollectionEquality()
                    .equals(other.remainingTime, remainingTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(remainingTime);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateRefreshFreqLimitedCopyWith<
          ParcelsActionsStateRefreshFreqLimited>
      get copyWith => _$ParcelsActionsStateRefreshFreqLimitedCopyWithImpl<
          ParcelsActionsStateRefreshFreqLimited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return refreshFreqLimited(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshFreqLimited != null) {
      return refreshFreqLimited(remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return refreshFreqLimited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (refreshFreqLimited != null) {
      return refreshFreqLimited(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateRefreshFreqLimited
    implements ParcelsActionsState {
  const factory ParcelsActionsStateRefreshFreqLimited(
          {required Duration remainingTime}) =
      _$ParcelsActionsStateRefreshFreqLimited;

  Duration get remainingTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateRefreshFreqLimitedCopyWith<
          ParcelsActionsStateRefreshFreqLimited>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateSharingStringCopyWith<$Res> {
  factory $ParcelsActionsStateSharingStringCopyWith(
          ParcelsActionsStateSharingString value,
          $Res Function(ParcelsActionsStateSharingString) then) =
      _$ParcelsActionsStateSharingStringCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateSharingStringCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateSharingStringCopyWith<$Res> {
  _$ParcelsActionsStateSharingStringCopyWithImpl(
      ParcelsActionsStateSharingString _value,
      $Res Function(ParcelsActionsStateSharingString) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateSharingString));

  @override
  ParcelsActionsStateSharingString get _value =>
      super._value as ParcelsActionsStateSharingString;
}

/// @nodoc

class _$ParcelsActionsStateSharingString
    implements ParcelsActionsStateSharingString {
  const _$ParcelsActionsStateSharingString();

  @override
  String toString() {
    return 'ParcelsActionsState.sharingString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateSharingString);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return sharingString();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (sharingString != null) {
      return sharingString();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return sharingString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (sharingString != null) {
      return sharingString(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateSharingString implements ParcelsActionsState {
  const factory ParcelsActionsStateSharingString() =
      _$ParcelsActionsStateSharingString;
}

/// @nodoc
abstract class $ParcelsActionsStateShareStringSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateShareStringSuccessCopyWith(
          ParcelsActionsStateShareStringSuccess value,
          $Res Function(ParcelsActionsStateShareStringSuccess) then) =
      _$ParcelsActionsStateShareStringSuccessCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$ParcelsActionsStateShareStringSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateShareStringSuccessCopyWith<$Res> {
  _$ParcelsActionsStateShareStringSuccessCopyWithImpl(
      ParcelsActionsStateShareStringSuccess _value,
      $Res Function(ParcelsActionsStateShareStringSuccess) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateShareStringSuccess));

  @override
  ParcelsActionsStateShareStringSuccess get _value =>
      super._value as ParcelsActionsStateShareStringSuccess;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(ParcelsActionsStateShareStringSuccess(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParcelsActionsStateShareStringSuccess
    implements ParcelsActionsStateShareStringSuccess {
  const _$ParcelsActionsStateShareStringSuccess({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ParcelsActionsState.shareStringSuccess(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateShareStringSuccess &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateShareStringSuccessCopyWith<
          ParcelsActionsStateShareStringSuccess>
      get copyWith => _$ParcelsActionsStateShareStringSuccessCopyWithImpl<
          ParcelsActionsStateShareStringSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return shareStringSuccess(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (shareStringSuccess != null) {
      return shareStringSuccess(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return shareStringSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (shareStringSuccess != null) {
      return shareStringSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateShareStringSuccess
    implements ParcelsActionsState {
  const factory ParcelsActionsStateShareStringSuccess({required String text}) =
      _$ParcelsActionsStateShareStringSuccess;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateShareStringSuccessCopyWith<
          ParcelsActionsStateShareStringSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsActionsStateCopyingTrackCopyWith<$Res> {
  factory $ParcelsActionsStateCopyingTrackCopyWith(
          ParcelsActionsStateCopyingTrack value,
          $Res Function(ParcelsActionsStateCopyingTrack) then) =
      _$ParcelsActionsStateCopyingTrackCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsActionsStateCopyingTrackCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateCopyingTrackCopyWith<$Res> {
  _$ParcelsActionsStateCopyingTrackCopyWithImpl(
      ParcelsActionsStateCopyingTrack _value,
      $Res Function(ParcelsActionsStateCopyingTrack) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateCopyingTrack));

  @override
  ParcelsActionsStateCopyingTrack get _value =>
      super._value as ParcelsActionsStateCopyingTrack;
}

/// @nodoc

class _$ParcelsActionsStateCopyingTrack
    implements ParcelsActionsStateCopyingTrack {
  const _$ParcelsActionsStateCopyingTrack();

  @override
  String toString() {
    return 'ParcelsActionsState.copyingTrack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsActionsStateCopyingTrack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return copyingTrack();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (copyingTrack != null) {
      return copyingTrack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return copyingTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (copyingTrack != null) {
      return copyingTrack(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateCopyingTrack implements ParcelsActionsState {
  const factory ParcelsActionsStateCopyingTrack() =
      _$ParcelsActionsStateCopyingTrack;
}

/// @nodoc
abstract class $ParcelsActionsStateCopyTrackSuccessCopyWith<$Res> {
  factory $ParcelsActionsStateCopyTrackSuccessCopyWith(
          ParcelsActionsStateCopyTrackSuccess value,
          $Res Function(ParcelsActionsStateCopyTrackSuccess) then) =
      _$ParcelsActionsStateCopyTrackSuccessCopyWithImpl<$Res>;
  $Res call({String trackNumbers});
}

/// @nodoc
class _$ParcelsActionsStateCopyTrackSuccessCopyWithImpl<$Res>
    extends _$ParcelsActionsStateCopyWithImpl<$Res>
    implements $ParcelsActionsStateCopyTrackSuccessCopyWith<$Res> {
  _$ParcelsActionsStateCopyTrackSuccessCopyWithImpl(
      ParcelsActionsStateCopyTrackSuccess _value,
      $Res Function(ParcelsActionsStateCopyTrackSuccess) _then)
      : super(_value, (v) => _then(v as ParcelsActionsStateCopyTrackSuccess));

  @override
  ParcelsActionsStateCopyTrackSuccess get _value =>
      super._value as ParcelsActionsStateCopyTrackSuccess;

  @override
  $Res call({
    Object? trackNumbers = freezed,
  }) {
    return _then(ParcelsActionsStateCopyTrackSuccess(
      trackNumbers: trackNumbers == freezed
          ? _value.trackNumbers
          : trackNumbers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParcelsActionsStateCopyTrackSuccess
    implements ParcelsActionsStateCopyTrackSuccess {
  const _$ParcelsActionsStateCopyTrackSuccess({required this.trackNumbers});

  @override
  final String trackNumbers;

  @override
  String toString() {
    return 'ParcelsActionsState.copyTrackSuccess(trackNumbers: $trackNumbers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsActionsStateCopyTrackSuccess &&
            (identical(other.trackNumbers, trackNumbers) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumbers, trackNumbers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumbers);

  @JsonKey(ignore: true)
  @override
  $ParcelsActionsStateCopyTrackSuccessCopyWith<
          ParcelsActionsStateCopyTrackSuccess>
      get copyWith => _$ParcelsActionsStateCopyTrackSuccessCopyWithImpl<
          ParcelsActionsStateCopyTrackSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error, int parcelsCount)
        moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(Map<String, EnqueueOneshotError> errors)
        refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumbers) copyTrackSuccess,
  }) {
    return copyTrackSuccess(trackNumbers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error, int parcelsCount)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error, int parcelsCount)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error, int parcelsCount)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(Map<String, EnqueueOneshotError> errors)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumbers)? copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (copyTrackSuccess != null) {
      return copyTrackSuccess(trackNumbers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsActionsStateInitial value) initial,
    required TResult Function(ParcelsActionsStateDeleting value) deleting,
    required TResult Function(ParcelsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(ParcelsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(ParcelsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(ParcelsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(ParcelsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(ParcelsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(ParcelsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(ParcelsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(ParcelsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(ParcelsActionsStateRefreshing value) refreshing,
    required TResult Function(ParcelsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(ParcelsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(ParcelsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(ParcelsActionsStateSharingString value)
        sharingString,
    required TResult Function(ParcelsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(ParcelsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(ParcelsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
  }) {
    return copyTrackSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsActionsStateInitial value)? initial,
    TResult Function(ParcelsActionsStateDeleting value)? deleting,
    TResult Function(ParcelsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(ParcelsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(ParcelsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(ParcelsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(ParcelsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(ParcelsActionsStateMovingToActive value)? movingToActive,
    TResult Function(ParcelsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(ParcelsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(ParcelsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(ParcelsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(ParcelsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(ParcelsActionsStateRefreshing value)? refreshing,
    TResult Function(ParcelsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(ParcelsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(ParcelsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(ParcelsActionsStateSharingString value)? sharingString,
    TResult Function(ParcelsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(ParcelsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(ParcelsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    required TResult orElse(),
  }) {
    if (copyTrackSuccess != null) {
      return copyTrackSuccess(this);
    }
    return orElse();
  }
}

abstract class ParcelsActionsStateCopyTrackSuccess
    implements ParcelsActionsState {
  const factory ParcelsActionsStateCopyTrackSuccess(
      {required String trackNumbers}) = _$ParcelsActionsStateCopyTrackSuccess;

  String get trackNumbers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsActionsStateCopyTrackSuccessCopyWith<
          ParcelsActionsStateCopyTrackSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
