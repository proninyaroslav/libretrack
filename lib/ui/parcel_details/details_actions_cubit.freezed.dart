// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'details_actions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsActionsStateTearOff {
  const _$DetailsActionsStateTearOff();

  DetailsActionsStateInitial initial() {
    return const DetailsActionsStateInitial();
  }

  DetailsActionsStateDeleting deleting() {
    return const DetailsActionsStateDeleting();
  }

  DetailsActionsStateDeleteSuccess deleteSuccess() {
    return const DetailsActionsStateDeleteSuccess();
  }

  DetailsActionsStateDeleteFailed deleteFailed({required StorageError error}) {
    return DetailsActionsStateDeleteFailed(
      error: error,
    );
  }

  DetailsActionsStateMarkingAsRead markingAsRead() {
    return const DetailsActionsStateMarkingAsRead();
  }

  DetailsActionsStateMarkAsReadSuccess markAsReadSuccess() {
    return const DetailsActionsStateMarkAsReadSuccess();
  }

  DetailsActionsStateMarkAsReadFailed markAsReadFailed(
      {required StorageError error}) {
    return DetailsActionsStateMarkAsReadFailed(
      error: error,
    );
  }

  DetailsActionsStateMovingToActive movingToActive() {
    return const DetailsActionsStateMovingToActive();
  }

  DetailsActionsStateMoveToActiveSuccess moveToActiveSuccess() {
    return const DetailsActionsStateMoveToActiveSuccess();
  }

  DetailsActionsStateMoveToActiveFailed moveToActiveFailed(
      {required StorageError error}) {
    return DetailsActionsStateMoveToActiveFailed(
      error: error,
    );
  }

  DetailsActionsStateMovingToArchive movingToArchive() {
    return const DetailsActionsStateMovingToArchive();
  }

  DetailsActionsStateMoveToArchiveSuccess moveToArchiveSuccess() {
    return const DetailsActionsStateMoveToArchiveSuccess();
  }

  DetailsActionsStateMoveToArchiveFailed moveToArchiveFailed(
      {required StorageError error}) {
    return DetailsActionsStateMoveToArchiveFailed(
      error: error,
    );
  }

  DetailsActionsStateRefreshing refreshing() {
    return const DetailsActionsStateRefreshing();
  }

  DetailsActionsStateRefreshSuccess refreshSuccess() {
    return const DetailsActionsStateRefreshSuccess();
  }

  DetailsActionsStateRefreshFailed refreshFailed(
      {required StorageError error}) {
    return DetailsActionsStateRefreshFailed(
      error: error,
    );
  }

  DetailsActionsStateRefreshFreqLimited refreshFreqLimited(
      {required Duration remainingTime}) {
    return DetailsActionsStateRefreshFreqLimited(
      remainingTime: remainingTime,
    );
  }

  DetailsActionsStateSharingString sharingString() {
    return const DetailsActionsStateSharingString();
  }

  DetailsActionsStateShareStringSuccess shareStringSuccess(
      {required String text}) {
    return DetailsActionsStateShareStringSuccess(
      text: text,
    );
  }

  DetailsActionsStateCopyingTrack copyingTrack() {
    return const DetailsActionsStateCopyingTrack();
  }

  DetailsActionsStateCopyTrackSuccess copyTrackSuccess(
      {required String trackNumber}) {
    return DetailsActionsStateCopyTrackSuccess(
      trackNumber: trackNumber,
    );
  }

  DetailsActionsStateActivating activating() {
    return const DetailsActionsStateActivating();
  }

  DetailsActionsStateActivateSuccess activateSuccess() {
    return const DetailsActionsStateActivateSuccess();
  }

  DetailsActionsStateActivateFailed activateFailed(
      {required StorageError error}) {
    return DetailsActionsStateActivateFailed(
      error: error,
    );
  }
}

/// @nodoc
const $DetailsActionsState = _$DetailsActionsStateTearOff();

/// @nodoc
mixin _$DetailsActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateCopyWith<$Res> {
  factory $DetailsActionsStateCopyWith(
          DetailsActionsState value, $Res Function(DetailsActionsState) then) =
      _$DetailsActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateCopyWith<$Res> {
  _$DetailsActionsStateCopyWithImpl(this._value, this._then);

  final DetailsActionsState _value;
  // ignore: unused_field
  final $Res Function(DetailsActionsState) _then;
}

/// @nodoc
abstract class $DetailsActionsStateInitialCopyWith<$Res> {
  factory $DetailsActionsStateInitialCopyWith(DetailsActionsStateInitial value,
          $Res Function(DetailsActionsStateInitial) then) =
      _$DetailsActionsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateInitialCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateInitialCopyWith<$Res> {
  _$DetailsActionsStateInitialCopyWithImpl(DetailsActionsStateInitial _value,
      $Res Function(DetailsActionsStateInitial) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateInitial));

  @override
  DetailsActionsStateInitial get _value =>
      super._value as DetailsActionsStateInitial;
}

/// @nodoc

class _$DetailsActionsStateInitial implements DetailsActionsStateInitial {
  const _$DetailsActionsStateInitial();

  @override
  String toString() {
    return 'DetailsActionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsActionsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateInitial implements DetailsActionsState {
  const factory DetailsActionsStateInitial() = _$DetailsActionsStateInitial;
}

/// @nodoc
abstract class $DetailsActionsStateDeletingCopyWith<$Res> {
  factory $DetailsActionsStateDeletingCopyWith(
          DetailsActionsStateDeleting value,
          $Res Function(DetailsActionsStateDeleting) then) =
      _$DetailsActionsStateDeletingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateDeletingCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateDeletingCopyWith<$Res> {
  _$DetailsActionsStateDeletingCopyWithImpl(DetailsActionsStateDeleting _value,
      $Res Function(DetailsActionsStateDeleting) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateDeleting));

  @override
  DetailsActionsStateDeleting get _value =>
      super._value as DetailsActionsStateDeleting;
}

/// @nodoc

class _$DetailsActionsStateDeleting implements DetailsActionsStateDeleting {
  const _$DetailsActionsStateDeleting();

  @override
  String toString() {
    return 'DetailsActionsState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsActionsStateDeleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateDeleting implements DetailsActionsState {
  const factory DetailsActionsStateDeleting() = _$DetailsActionsStateDeleting;
}

/// @nodoc
abstract class $DetailsActionsStateDeleteSuccessCopyWith<$Res> {
  factory $DetailsActionsStateDeleteSuccessCopyWith(
          DetailsActionsStateDeleteSuccess value,
          $Res Function(DetailsActionsStateDeleteSuccess) then) =
      _$DetailsActionsStateDeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateDeleteSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateDeleteSuccessCopyWith<$Res> {
  _$DetailsActionsStateDeleteSuccessCopyWithImpl(
      DetailsActionsStateDeleteSuccess _value,
      $Res Function(DetailsActionsStateDeleteSuccess) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateDeleteSuccess));

  @override
  DetailsActionsStateDeleteSuccess get _value =>
      super._value as DetailsActionsStateDeleteSuccess;
}

/// @nodoc

class _$DetailsActionsStateDeleteSuccess
    implements DetailsActionsStateDeleteSuccess {
  const _$DetailsActionsStateDeleteSuccess();

  @override
  String toString() {
    return 'DetailsActionsState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateDeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateDeleteSuccess implements DetailsActionsState {
  const factory DetailsActionsStateDeleteSuccess() =
      _$DetailsActionsStateDeleteSuccess;
}

/// @nodoc
abstract class $DetailsActionsStateDeleteFailedCopyWith<$Res> {
  factory $DetailsActionsStateDeleteFailedCopyWith(
          DetailsActionsStateDeleteFailed value,
          $Res Function(DetailsActionsStateDeleteFailed) then) =
      _$DetailsActionsStateDeleteFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$DetailsActionsStateDeleteFailedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateDeleteFailedCopyWith<$Res> {
  _$DetailsActionsStateDeleteFailedCopyWithImpl(
      DetailsActionsStateDeleteFailed _value,
      $Res Function(DetailsActionsStateDeleteFailed) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateDeleteFailed));

  @override
  DetailsActionsStateDeleteFailed get _value =>
      super._value as DetailsActionsStateDeleteFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsActionsStateDeleteFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
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

class _$DetailsActionsStateDeleteFailed
    implements DetailsActionsStateDeleteFailed {
  const _$DetailsActionsStateDeleteFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return 'DetailsActionsState.deleteFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateDeleteFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateDeleteFailedCopyWith<DetailsActionsStateDeleteFailed>
      get copyWith => _$DetailsActionsStateDeleteFailedCopyWithImpl<
          DetailsActionsStateDeleteFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return deleteFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateDeleteFailed implements DetailsActionsState {
  const factory DetailsActionsStateDeleteFailed({required StorageError error}) =
      _$DetailsActionsStateDeleteFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateDeleteFailedCopyWith<DetailsActionsStateDeleteFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateMarkingAsReadCopyWith<$Res> {
  factory $DetailsActionsStateMarkingAsReadCopyWith(
          DetailsActionsStateMarkingAsRead value,
          $Res Function(DetailsActionsStateMarkingAsRead) then) =
      _$DetailsActionsStateMarkingAsReadCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateMarkingAsReadCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMarkingAsReadCopyWith<$Res> {
  _$DetailsActionsStateMarkingAsReadCopyWithImpl(
      DetailsActionsStateMarkingAsRead _value,
      $Res Function(DetailsActionsStateMarkingAsRead) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateMarkingAsRead));

  @override
  DetailsActionsStateMarkingAsRead get _value =>
      super._value as DetailsActionsStateMarkingAsRead;
}

/// @nodoc

class _$DetailsActionsStateMarkingAsRead
    implements DetailsActionsStateMarkingAsRead {
  const _$DetailsActionsStateMarkingAsRead();

  @override
  String toString() {
    return 'DetailsActionsState.markingAsRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMarkingAsRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return markingAsRead();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return markingAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (markingAsRead != null) {
      return markingAsRead(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMarkingAsRead implements DetailsActionsState {
  const factory DetailsActionsStateMarkingAsRead() =
      _$DetailsActionsStateMarkingAsRead;
}

/// @nodoc
abstract class $DetailsActionsStateMarkAsReadSuccessCopyWith<$Res> {
  factory $DetailsActionsStateMarkAsReadSuccessCopyWith(
          DetailsActionsStateMarkAsReadSuccess value,
          $Res Function(DetailsActionsStateMarkAsReadSuccess) then) =
      _$DetailsActionsStateMarkAsReadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateMarkAsReadSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMarkAsReadSuccessCopyWith<$Res> {
  _$DetailsActionsStateMarkAsReadSuccessCopyWithImpl(
      DetailsActionsStateMarkAsReadSuccess _value,
      $Res Function(DetailsActionsStateMarkAsReadSuccess) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateMarkAsReadSuccess));

  @override
  DetailsActionsStateMarkAsReadSuccess get _value =>
      super._value as DetailsActionsStateMarkAsReadSuccess;
}

/// @nodoc

class _$DetailsActionsStateMarkAsReadSuccess
    implements DetailsActionsStateMarkAsReadSuccess {
  const _$DetailsActionsStateMarkAsReadSuccess();

  @override
  String toString() {
    return 'DetailsActionsState.markAsReadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMarkAsReadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return markAsReadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return markAsReadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (markAsReadSuccess != null) {
      return markAsReadSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMarkAsReadSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateMarkAsReadSuccess() =
      _$DetailsActionsStateMarkAsReadSuccess;
}

/// @nodoc
abstract class $DetailsActionsStateMarkAsReadFailedCopyWith<$Res> {
  factory $DetailsActionsStateMarkAsReadFailedCopyWith(
          DetailsActionsStateMarkAsReadFailed value,
          $Res Function(DetailsActionsStateMarkAsReadFailed) then) =
      _$DetailsActionsStateMarkAsReadFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$DetailsActionsStateMarkAsReadFailedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMarkAsReadFailedCopyWith<$Res> {
  _$DetailsActionsStateMarkAsReadFailedCopyWithImpl(
      DetailsActionsStateMarkAsReadFailed _value,
      $Res Function(DetailsActionsStateMarkAsReadFailed) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateMarkAsReadFailed));

  @override
  DetailsActionsStateMarkAsReadFailed get _value =>
      super._value as DetailsActionsStateMarkAsReadFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsActionsStateMarkAsReadFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
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

class _$DetailsActionsStateMarkAsReadFailed
    implements DetailsActionsStateMarkAsReadFailed {
  const _$DetailsActionsStateMarkAsReadFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return 'DetailsActionsState.markAsReadFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMarkAsReadFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateMarkAsReadFailedCopyWith<
          DetailsActionsStateMarkAsReadFailed>
      get copyWith => _$DetailsActionsStateMarkAsReadFailedCopyWithImpl<
          DetailsActionsStateMarkAsReadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return markAsReadFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (markAsReadFailed != null) {
      return markAsReadFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return markAsReadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (markAsReadFailed != null) {
      return markAsReadFailed(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMarkAsReadFailed
    implements DetailsActionsState {
  const factory DetailsActionsStateMarkAsReadFailed(
      {required StorageError error}) = _$DetailsActionsStateMarkAsReadFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateMarkAsReadFailedCopyWith<
          DetailsActionsStateMarkAsReadFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateMovingToActiveCopyWith<$Res> {
  factory $DetailsActionsStateMovingToActiveCopyWith(
          DetailsActionsStateMovingToActive value,
          $Res Function(DetailsActionsStateMovingToActive) then) =
      _$DetailsActionsStateMovingToActiveCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateMovingToActiveCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMovingToActiveCopyWith<$Res> {
  _$DetailsActionsStateMovingToActiveCopyWithImpl(
      DetailsActionsStateMovingToActive _value,
      $Res Function(DetailsActionsStateMovingToActive) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateMovingToActive));

  @override
  DetailsActionsStateMovingToActive get _value =>
      super._value as DetailsActionsStateMovingToActive;
}

/// @nodoc

class _$DetailsActionsStateMovingToActive
    implements DetailsActionsStateMovingToActive {
  const _$DetailsActionsStateMovingToActive();

  @override
  String toString() {
    return 'DetailsActionsState.movingToActive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMovingToActive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return movingToActive();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return movingToActive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (movingToActive != null) {
      return movingToActive(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMovingToActive
    implements DetailsActionsState {
  const factory DetailsActionsStateMovingToActive() =
      _$DetailsActionsStateMovingToActive;
}

/// @nodoc
abstract class $DetailsActionsStateMoveToActiveSuccessCopyWith<$Res> {
  factory $DetailsActionsStateMoveToActiveSuccessCopyWith(
          DetailsActionsStateMoveToActiveSuccess value,
          $Res Function(DetailsActionsStateMoveToActiveSuccess) then) =
      _$DetailsActionsStateMoveToActiveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateMoveToActiveSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMoveToActiveSuccessCopyWith<$Res> {
  _$DetailsActionsStateMoveToActiveSuccessCopyWithImpl(
      DetailsActionsStateMoveToActiveSuccess _value,
      $Res Function(DetailsActionsStateMoveToActiveSuccess) _then)
      : super(
            _value, (v) => _then(v as DetailsActionsStateMoveToActiveSuccess));

  @override
  DetailsActionsStateMoveToActiveSuccess get _value =>
      super._value as DetailsActionsStateMoveToActiveSuccess;
}

/// @nodoc

class _$DetailsActionsStateMoveToActiveSuccess
    implements DetailsActionsStateMoveToActiveSuccess {
  const _$DetailsActionsStateMoveToActiveSuccess();

  @override
  String toString() {
    return 'DetailsActionsState.moveToActiveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMoveToActiveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return moveToActiveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return moveToActiveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (moveToActiveSuccess != null) {
      return moveToActiveSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMoveToActiveSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateMoveToActiveSuccess() =
      _$DetailsActionsStateMoveToActiveSuccess;
}

/// @nodoc
abstract class $DetailsActionsStateMoveToActiveFailedCopyWith<$Res> {
  factory $DetailsActionsStateMoveToActiveFailedCopyWith(
          DetailsActionsStateMoveToActiveFailed value,
          $Res Function(DetailsActionsStateMoveToActiveFailed) then) =
      _$DetailsActionsStateMoveToActiveFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$DetailsActionsStateMoveToActiveFailedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMoveToActiveFailedCopyWith<$Res> {
  _$DetailsActionsStateMoveToActiveFailedCopyWithImpl(
      DetailsActionsStateMoveToActiveFailed _value,
      $Res Function(DetailsActionsStateMoveToActiveFailed) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateMoveToActiveFailed));

  @override
  DetailsActionsStateMoveToActiveFailed get _value =>
      super._value as DetailsActionsStateMoveToActiveFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsActionsStateMoveToActiveFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
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

class _$DetailsActionsStateMoveToActiveFailed
    implements DetailsActionsStateMoveToActiveFailed {
  const _$DetailsActionsStateMoveToActiveFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return 'DetailsActionsState.moveToActiveFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMoveToActiveFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateMoveToActiveFailedCopyWith<
          DetailsActionsStateMoveToActiveFailed>
      get copyWith => _$DetailsActionsStateMoveToActiveFailedCopyWithImpl<
          DetailsActionsStateMoveToActiveFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return moveToActiveFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (moveToActiveFailed != null) {
      return moveToActiveFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return moveToActiveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (moveToActiveFailed != null) {
      return moveToActiveFailed(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMoveToActiveFailed
    implements DetailsActionsState {
  const factory DetailsActionsStateMoveToActiveFailed(
      {required StorageError error}) = _$DetailsActionsStateMoveToActiveFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateMoveToActiveFailedCopyWith<
          DetailsActionsStateMoveToActiveFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateMovingToArchiveCopyWith<$Res> {
  factory $DetailsActionsStateMovingToArchiveCopyWith(
          DetailsActionsStateMovingToArchive value,
          $Res Function(DetailsActionsStateMovingToArchive) then) =
      _$DetailsActionsStateMovingToArchiveCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateMovingToArchiveCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMovingToArchiveCopyWith<$Res> {
  _$DetailsActionsStateMovingToArchiveCopyWithImpl(
      DetailsActionsStateMovingToArchive _value,
      $Res Function(DetailsActionsStateMovingToArchive) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateMovingToArchive));

  @override
  DetailsActionsStateMovingToArchive get _value =>
      super._value as DetailsActionsStateMovingToArchive;
}

/// @nodoc

class _$DetailsActionsStateMovingToArchive
    implements DetailsActionsStateMovingToArchive {
  const _$DetailsActionsStateMovingToArchive();

  @override
  String toString() {
    return 'DetailsActionsState.movingToArchive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMovingToArchive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return movingToArchive();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return movingToArchive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (movingToArchive != null) {
      return movingToArchive(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMovingToArchive
    implements DetailsActionsState {
  const factory DetailsActionsStateMovingToArchive() =
      _$DetailsActionsStateMovingToArchive;
}

/// @nodoc
abstract class $DetailsActionsStateMoveToArchiveSuccessCopyWith<$Res> {
  factory $DetailsActionsStateMoveToArchiveSuccessCopyWith(
          DetailsActionsStateMoveToArchiveSuccess value,
          $Res Function(DetailsActionsStateMoveToArchiveSuccess) then) =
      _$DetailsActionsStateMoveToArchiveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateMoveToArchiveSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMoveToArchiveSuccessCopyWith<$Res> {
  _$DetailsActionsStateMoveToArchiveSuccessCopyWithImpl(
      DetailsActionsStateMoveToArchiveSuccess _value,
      $Res Function(DetailsActionsStateMoveToArchiveSuccess) _then)
      : super(
            _value, (v) => _then(v as DetailsActionsStateMoveToArchiveSuccess));

  @override
  DetailsActionsStateMoveToArchiveSuccess get _value =>
      super._value as DetailsActionsStateMoveToArchiveSuccess;
}

/// @nodoc

class _$DetailsActionsStateMoveToArchiveSuccess
    implements DetailsActionsStateMoveToArchiveSuccess {
  const _$DetailsActionsStateMoveToArchiveSuccess();

  @override
  String toString() {
    return 'DetailsActionsState.moveToArchiveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMoveToArchiveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return moveToArchiveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return moveToArchiveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (moveToArchiveSuccess != null) {
      return moveToArchiveSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMoveToArchiveSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateMoveToArchiveSuccess() =
      _$DetailsActionsStateMoveToArchiveSuccess;
}

/// @nodoc
abstract class $DetailsActionsStateMoveToArchiveFailedCopyWith<$Res> {
  factory $DetailsActionsStateMoveToArchiveFailedCopyWith(
          DetailsActionsStateMoveToArchiveFailed value,
          $Res Function(DetailsActionsStateMoveToArchiveFailed) then) =
      _$DetailsActionsStateMoveToArchiveFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$DetailsActionsStateMoveToArchiveFailedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateMoveToArchiveFailedCopyWith<$Res> {
  _$DetailsActionsStateMoveToArchiveFailedCopyWithImpl(
      DetailsActionsStateMoveToArchiveFailed _value,
      $Res Function(DetailsActionsStateMoveToArchiveFailed) _then)
      : super(
            _value, (v) => _then(v as DetailsActionsStateMoveToArchiveFailed));

  @override
  DetailsActionsStateMoveToArchiveFailed get _value =>
      super._value as DetailsActionsStateMoveToArchiveFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsActionsStateMoveToArchiveFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
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

class _$DetailsActionsStateMoveToArchiveFailed
    implements DetailsActionsStateMoveToArchiveFailed {
  const _$DetailsActionsStateMoveToArchiveFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return 'DetailsActionsState.moveToArchiveFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateMoveToArchiveFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateMoveToArchiveFailedCopyWith<
          DetailsActionsStateMoveToArchiveFailed>
      get copyWith => _$DetailsActionsStateMoveToArchiveFailedCopyWithImpl<
          DetailsActionsStateMoveToArchiveFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return moveToArchiveFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (moveToArchiveFailed != null) {
      return moveToArchiveFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return moveToArchiveFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (moveToArchiveFailed != null) {
      return moveToArchiveFailed(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateMoveToArchiveFailed
    implements DetailsActionsState {
  const factory DetailsActionsStateMoveToArchiveFailed(
      {required StorageError error}) = _$DetailsActionsStateMoveToArchiveFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateMoveToArchiveFailedCopyWith<
          DetailsActionsStateMoveToArchiveFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateRefreshingCopyWith<$Res> {
  factory $DetailsActionsStateRefreshingCopyWith(
          DetailsActionsStateRefreshing value,
          $Res Function(DetailsActionsStateRefreshing) then) =
      _$DetailsActionsStateRefreshingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateRefreshingCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateRefreshingCopyWith<$Res> {
  _$DetailsActionsStateRefreshingCopyWithImpl(
      DetailsActionsStateRefreshing _value,
      $Res Function(DetailsActionsStateRefreshing) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateRefreshing));

  @override
  DetailsActionsStateRefreshing get _value =>
      super._value as DetailsActionsStateRefreshing;
}

/// @nodoc

class _$DetailsActionsStateRefreshing implements DetailsActionsStateRefreshing {
  const _$DetailsActionsStateRefreshing();

  @override
  String toString() {
    return 'DetailsActionsState.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsActionsStateRefreshing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateRefreshing implements DetailsActionsState {
  const factory DetailsActionsStateRefreshing() =
      _$DetailsActionsStateRefreshing;
}

/// @nodoc
abstract class $DetailsActionsStateRefreshSuccessCopyWith<$Res> {
  factory $DetailsActionsStateRefreshSuccessCopyWith(
          DetailsActionsStateRefreshSuccess value,
          $Res Function(DetailsActionsStateRefreshSuccess) then) =
      _$DetailsActionsStateRefreshSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateRefreshSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateRefreshSuccessCopyWith<$Res> {
  _$DetailsActionsStateRefreshSuccessCopyWithImpl(
      DetailsActionsStateRefreshSuccess _value,
      $Res Function(DetailsActionsStateRefreshSuccess) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateRefreshSuccess));

  @override
  DetailsActionsStateRefreshSuccess get _value =>
      super._value as DetailsActionsStateRefreshSuccess;
}

/// @nodoc

class _$DetailsActionsStateRefreshSuccess
    implements DetailsActionsStateRefreshSuccess {
  const _$DetailsActionsStateRefreshSuccess();

  @override
  String toString() {
    return 'DetailsActionsState.refreshSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateRefreshSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return refreshSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return refreshSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateRefreshSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateRefreshSuccess() =
      _$DetailsActionsStateRefreshSuccess;
}

/// @nodoc
abstract class $DetailsActionsStateRefreshFailedCopyWith<$Res> {
  factory $DetailsActionsStateRefreshFailedCopyWith(
          DetailsActionsStateRefreshFailed value,
          $Res Function(DetailsActionsStateRefreshFailed) then) =
      _$DetailsActionsStateRefreshFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$DetailsActionsStateRefreshFailedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateRefreshFailedCopyWith<$Res> {
  _$DetailsActionsStateRefreshFailedCopyWithImpl(
      DetailsActionsStateRefreshFailed _value,
      $Res Function(DetailsActionsStateRefreshFailed) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateRefreshFailed));

  @override
  DetailsActionsStateRefreshFailed get _value =>
      super._value as DetailsActionsStateRefreshFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsActionsStateRefreshFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
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

class _$DetailsActionsStateRefreshFailed
    implements DetailsActionsStateRefreshFailed {
  const _$DetailsActionsStateRefreshFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return 'DetailsActionsState.refreshFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateRefreshFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateRefreshFailedCopyWith<DetailsActionsStateRefreshFailed>
      get copyWith => _$DetailsActionsStateRefreshFailedCopyWithImpl<
          DetailsActionsStateRefreshFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return refreshFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (refreshFailed != null) {
      return refreshFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return refreshFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (refreshFailed != null) {
      return refreshFailed(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateRefreshFailed implements DetailsActionsState {
  const factory DetailsActionsStateRefreshFailed(
      {required StorageError error}) = _$DetailsActionsStateRefreshFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateRefreshFailedCopyWith<DetailsActionsStateRefreshFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateRefreshFreqLimitedCopyWith<$Res> {
  factory $DetailsActionsStateRefreshFreqLimitedCopyWith(
          DetailsActionsStateRefreshFreqLimited value,
          $Res Function(DetailsActionsStateRefreshFreqLimited) then) =
      _$DetailsActionsStateRefreshFreqLimitedCopyWithImpl<$Res>;
  $Res call({Duration remainingTime});
}

/// @nodoc
class _$DetailsActionsStateRefreshFreqLimitedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateRefreshFreqLimitedCopyWith<$Res> {
  _$DetailsActionsStateRefreshFreqLimitedCopyWithImpl(
      DetailsActionsStateRefreshFreqLimited _value,
      $Res Function(DetailsActionsStateRefreshFreqLimited) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateRefreshFreqLimited));

  @override
  DetailsActionsStateRefreshFreqLimited get _value =>
      super._value as DetailsActionsStateRefreshFreqLimited;

  @override
  $Res call({
    Object? remainingTime = freezed,
  }) {
    return _then(DetailsActionsStateRefreshFreqLimited(
      remainingTime: remainingTime == freezed
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$DetailsActionsStateRefreshFreqLimited
    implements DetailsActionsStateRefreshFreqLimited {
  const _$DetailsActionsStateRefreshFreqLimited({required this.remainingTime});

  @override
  final Duration remainingTime;

  @override
  String toString() {
    return 'DetailsActionsState.refreshFreqLimited(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateRefreshFreqLimited &&
            (identical(other.remainingTime, remainingTime) ||
                const DeepCollectionEquality()
                    .equals(other.remainingTime, remainingTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(remainingTime);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateRefreshFreqLimitedCopyWith<
          DetailsActionsStateRefreshFreqLimited>
      get copyWith => _$DetailsActionsStateRefreshFreqLimitedCopyWithImpl<
          DetailsActionsStateRefreshFreqLimited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return refreshFreqLimited(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return refreshFreqLimited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (refreshFreqLimited != null) {
      return refreshFreqLimited(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateRefreshFreqLimited
    implements DetailsActionsState {
  const factory DetailsActionsStateRefreshFreqLimited(
          {required Duration remainingTime}) =
      _$DetailsActionsStateRefreshFreqLimited;

  Duration get remainingTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateRefreshFreqLimitedCopyWith<
          DetailsActionsStateRefreshFreqLimited>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateSharingStringCopyWith<$Res> {
  factory $DetailsActionsStateSharingStringCopyWith(
          DetailsActionsStateSharingString value,
          $Res Function(DetailsActionsStateSharingString) then) =
      _$DetailsActionsStateSharingStringCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateSharingStringCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateSharingStringCopyWith<$Res> {
  _$DetailsActionsStateSharingStringCopyWithImpl(
      DetailsActionsStateSharingString _value,
      $Res Function(DetailsActionsStateSharingString) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateSharingString));

  @override
  DetailsActionsStateSharingString get _value =>
      super._value as DetailsActionsStateSharingString;
}

/// @nodoc

class _$DetailsActionsStateSharingString
    implements DetailsActionsStateSharingString {
  const _$DetailsActionsStateSharingString();

  @override
  String toString() {
    return 'DetailsActionsState.sharingString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateSharingString);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return sharingString();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return sharingString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (sharingString != null) {
      return sharingString(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateSharingString implements DetailsActionsState {
  const factory DetailsActionsStateSharingString() =
      _$DetailsActionsStateSharingString;
}

/// @nodoc
abstract class $DetailsActionsStateShareStringSuccessCopyWith<$Res> {
  factory $DetailsActionsStateShareStringSuccessCopyWith(
          DetailsActionsStateShareStringSuccess value,
          $Res Function(DetailsActionsStateShareStringSuccess) then) =
      _$DetailsActionsStateShareStringSuccessCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$DetailsActionsStateShareStringSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateShareStringSuccessCopyWith<$Res> {
  _$DetailsActionsStateShareStringSuccessCopyWithImpl(
      DetailsActionsStateShareStringSuccess _value,
      $Res Function(DetailsActionsStateShareStringSuccess) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateShareStringSuccess));

  @override
  DetailsActionsStateShareStringSuccess get _value =>
      super._value as DetailsActionsStateShareStringSuccess;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(DetailsActionsStateShareStringSuccess(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailsActionsStateShareStringSuccess
    implements DetailsActionsStateShareStringSuccess {
  const _$DetailsActionsStateShareStringSuccess({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'DetailsActionsState.shareStringSuccess(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateShareStringSuccess &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateShareStringSuccessCopyWith<
          DetailsActionsStateShareStringSuccess>
      get copyWith => _$DetailsActionsStateShareStringSuccessCopyWithImpl<
          DetailsActionsStateShareStringSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return shareStringSuccess(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return shareStringSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (shareStringSuccess != null) {
      return shareStringSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateShareStringSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateShareStringSuccess({required String text}) =
      _$DetailsActionsStateShareStringSuccess;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateShareStringSuccessCopyWith<
          DetailsActionsStateShareStringSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateCopyingTrackCopyWith<$Res> {
  factory $DetailsActionsStateCopyingTrackCopyWith(
          DetailsActionsStateCopyingTrack value,
          $Res Function(DetailsActionsStateCopyingTrack) then) =
      _$DetailsActionsStateCopyingTrackCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateCopyingTrackCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateCopyingTrackCopyWith<$Res> {
  _$DetailsActionsStateCopyingTrackCopyWithImpl(
      DetailsActionsStateCopyingTrack _value,
      $Res Function(DetailsActionsStateCopyingTrack) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateCopyingTrack));

  @override
  DetailsActionsStateCopyingTrack get _value =>
      super._value as DetailsActionsStateCopyingTrack;
}

/// @nodoc

class _$DetailsActionsStateCopyingTrack
    implements DetailsActionsStateCopyingTrack {
  const _$DetailsActionsStateCopyingTrack();

  @override
  String toString() {
    return 'DetailsActionsState.copyingTrack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsActionsStateCopyingTrack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return copyingTrack();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
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
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return copyingTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (copyingTrack != null) {
      return copyingTrack(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateCopyingTrack implements DetailsActionsState {
  const factory DetailsActionsStateCopyingTrack() =
      _$DetailsActionsStateCopyingTrack;
}

/// @nodoc
abstract class $DetailsActionsStateCopyTrackSuccessCopyWith<$Res> {
  factory $DetailsActionsStateCopyTrackSuccessCopyWith(
          DetailsActionsStateCopyTrackSuccess value,
          $Res Function(DetailsActionsStateCopyTrackSuccess) then) =
      _$DetailsActionsStateCopyTrackSuccessCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$DetailsActionsStateCopyTrackSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateCopyTrackSuccessCopyWith<$Res> {
  _$DetailsActionsStateCopyTrackSuccessCopyWithImpl(
      DetailsActionsStateCopyTrackSuccess _value,
      $Res Function(DetailsActionsStateCopyTrackSuccess) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateCopyTrackSuccess));

  @override
  DetailsActionsStateCopyTrackSuccess get _value =>
      super._value as DetailsActionsStateCopyTrackSuccess;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(DetailsActionsStateCopyTrackSuccess(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailsActionsStateCopyTrackSuccess
    implements DetailsActionsStateCopyTrackSuccess {
  const _$DetailsActionsStateCopyTrackSuccess({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'DetailsActionsState.copyTrackSuccess(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateCopyTrackSuccess &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateCopyTrackSuccessCopyWith<
          DetailsActionsStateCopyTrackSuccess>
      get copyWith => _$DetailsActionsStateCopyTrackSuccessCopyWithImpl<
          DetailsActionsStateCopyTrackSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return copyTrackSuccess(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (copyTrackSuccess != null) {
      return copyTrackSuccess(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return copyTrackSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (copyTrackSuccess != null) {
      return copyTrackSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateCopyTrackSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateCopyTrackSuccess(
      {required String trackNumber}) = _$DetailsActionsStateCopyTrackSuccess;

  String get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateCopyTrackSuccessCopyWith<
          DetailsActionsStateCopyTrackSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsActionsStateActivatingCopyWith<$Res> {
  factory $DetailsActionsStateActivatingCopyWith(
          DetailsActionsStateActivating value,
          $Res Function(DetailsActionsStateActivating) then) =
      _$DetailsActionsStateActivatingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateActivatingCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateActivatingCopyWith<$Res> {
  _$DetailsActionsStateActivatingCopyWithImpl(
      DetailsActionsStateActivating _value,
      $Res Function(DetailsActionsStateActivating) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateActivating));

  @override
  DetailsActionsStateActivating get _value =>
      super._value as DetailsActionsStateActivating;
}

/// @nodoc

class _$DetailsActionsStateActivating implements DetailsActionsStateActivating {
  const _$DetailsActionsStateActivating();

  @override
  String toString() {
    return 'DetailsActionsState.activating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsActionsStateActivating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return activating();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (activating != null) {
      return activating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return activating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (activating != null) {
      return activating(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateActivating implements DetailsActionsState {
  const factory DetailsActionsStateActivating() =
      _$DetailsActionsStateActivating;
}

/// @nodoc
abstract class $DetailsActionsStateActivateSuccessCopyWith<$Res> {
  factory $DetailsActionsStateActivateSuccessCopyWith(
          DetailsActionsStateActivateSuccess value,
          $Res Function(DetailsActionsStateActivateSuccess) then) =
      _$DetailsActionsStateActivateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsActionsStateActivateSuccessCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateActivateSuccessCopyWith<$Res> {
  _$DetailsActionsStateActivateSuccessCopyWithImpl(
      DetailsActionsStateActivateSuccess _value,
      $Res Function(DetailsActionsStateActivateSuccess) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateActivateSuccess));

  @override
  DetailsActionsStateActivateSuccess get _value =>
      super._value as DetailsActionsStateActivateSuccess;
}

/// @nodoc

class _$DetailsActionsStateActivateSuccess
    implements DetailsActionsStateActivateSuccess {
  const _$DetailsActionsStateActivateSuccess();

  @override
  String toString() {
    return 'DetailsActionsState.activateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateActivateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return activateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (activateSuccess != null) {
      return activateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return activateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (activateSuccess != null) {
      return activateSuccess(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateActivateSuccess
    implements DetailsActionsState {
  const factory DetailsActionsStateActivateSuccess() =
      _$DetailsActionsStateActivateSuccess;
}

/// @nodoc
abstract class $DetailsActionsStateActivateFailedCopyWith<$Res> {
  factory $DetailsActionsStateActivateFailedCopyWith(
          DetailsActionsStateActivateFailed value,
          $Res Function(DetailsActionsStateActivateFailed) then) =
      _$DetailsActionsStateActivateFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$DetailsActionsStateActivateFailedCopyWithImpl<$Res>
    extends _$DetailsActionsStateCopyWithImpl<$Res>
    implements $DetailsActionsStateActivateFailedCopyWith<$Res> {
  _$DetailsActionsStateActivateFailedCopyWithImpl(
      DetailsActionsStateActivateFailed _value,
      $Res Function(DetailsActionsStateActivateFailed) _then)
      : super(_value, (v) => _then(v as DetailsActionsStateActivateFailed));

  @override
  DetailsActionsStateActivateFailed get _value =>
      super._value as DetailsActionsStateActivateFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DetailsActionsStateActivateFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
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

class _$DetailsActionsStateActivateFailed
    implements DetailsActionsStateActivateFailed {
  const _$DetailsActionsStateActivateFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return 'DetailsActionsState.activateFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsActionsStateActivateFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DetailsActionsStateActivateFailedCopyWith<DetailsActionsStateActivateFailed>
      get copyWith => _$DetailsActionsStateActivateFailedCopyWithImpl<
          DetailsActionsStateActivateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
    required TResult Function() markingAsRead,
    required TResult Function() markAsReadSuccess,
    required TResult Function(StorageError error) markAsReadFailed,
    required TResult Function() movingToActive,
    required TResult Function() moveToActiveSuccess,
    required TResult Function(StorageError error) moveToActiveFailed,
    required TResult Function() movingToArchive,
    required TResult Function() moveToArchiveSuccess,
    required TResult Function(StorageError error) moveToArchiveFailed,
    required TResult Function() refreshing,
    required TResult Function() refreshSuccess,
    required TResult Function(StorageError error) refreshFailed,
    required TResult Function(Duration remainingTime) refreshFreqLimited,
    required TResult Function() sharingString,
    required TResult Function(String text) shareStringSuccess,
    required TResult Function() copyingTrack,
    required TResult Function(String trackNumber) copyTrackSuccess,
    required TResult Function() activating,
    required TResult Function() activateSuccess,
    required TResult Function(StorageError error) activateFailed,
  }) {
    return activateFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    TResult Function()? markingAsRead,
    TResult Function()? markAsReadSuccess,
    TResult Function(StorageError error)? markAsReadFailed,
    TResult Function()? movingToActive,
    TResult Function()? moveToActiveSuccess,
    TResult Function(StorageError error)? moveToActiveFailed,
    TResult Function()? movingToArchive,
    TResult Function()? moveToArchiveSuccess,
    TResult Function(StorageError error)? moveToArchiveFailed,
    TResult Function()? refreshing,
    TResult Function()? refreshSuccess,
    TResult Function(StorageError error)? refreshFailed,
    TResult Function(Duration remainingTime)? refreshFreqLimited,
    TResult Function()? sharingString,
    TResult Function(String text)? shareStringSuccess,
    TResult Function()? copyingTrack,
    TResult Function(String trackNumber)? copyTrackSuccess,
    TResult Function()? activating,
    TResult Function()? activateSuccess,
    TResult Function(StorageError error)? activateFailed,
    required TResult orElse(),
  }) {
    if (activateFailed != null) {
      return activateFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsActionsStateInitial value) initial,
    required TResult Function(DetailsActionsStateDeleting value) deleting,
    required TResult Function(DetailsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(DetailsActionsStateDeleteFailed value)
        deleteFailed,
    required TResult Function(DetailsActionsStateMarkingAsRead value)
        markingAsRead,
    required TResult Function(DetailsActionsStateMarkAsReadSuccess value)
        markAsReadSuccess,
    required TResult Function(DetailsActionsStateMarkAsReadFailed value)
        markAsReadFailed,
    required TResult Function(DetailsActionsStateMovingToActive value)
        movingToActive,
    required TResult Function(DetailsActionsStateMoveToActiveSuccess value)
        moveToActiveSuccess,
    required TResult Function(DetailsActionsStateMoveToActiveFailed value)
        moveToActiveFailed,
    required TResult Function(DetailsActionsStateMovingToArchive value)
        movingToArchive,
    required TResult Function(DetailsActionsStateMoveToArchiveSuccess value)
        moveToArchiveSuccess,
    required TResult Function(DetailsActionsStateMoveToArchiveFailed value)
        moveToArchiveFailed,
    required TResult Function(DetailsActionsStateRefreshing value) refreshing,
    required TResult Function(DetailsActionsStateRefreshSuccess value)
        refreshSuccess,
    required TResult Function(DetailsActionsStateRefreshFailed value)
        refreshFailed,
    required TResult Function(DetailsActionsStateRefreshFreqLimited value)
        refreshFreqLimited,
    required TResult Function(DetailsActionsStateSharingString value)
        sharingString,
    required TResult Function(DetailsActionsStateShareStringSuccess value)
        shareStringSuccess,
    required TResult Function(DetailsActionsStateCopyingTrack value)
        copyingTrack,
    required TResult Function(DetailsActionsStateCopyTrackSuccess value)
        copyTrackSuccess,
    required TResult Function(DetailsActionsStateActivating value) activating,
    required TResult Function(DetailsActionsStateActivateSuccess value)
        activateSuccess,
    required TResult Function(DetailsActionsStateActivateFailed value)
        activateFailed,
  }) {
    return activateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsActionsStateInitial value)? initial,
    TResult Function(DetailsActionsStateDeleting value)? deleting,
    TResult Function(DetailsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(DetailsActionsStateDeleteFailed value)? deleteFailed,
    TResult Function(DetailsActionsStateMarkingAsRead value)? markingAsRead,
    TResult Function(DetailsActionsStateMarkAsReadSuccess value)?
        markAsReadSuccess,
    TResult Function(DetailsActionsStateMarkAsReadFailed value)?
        markAsReadFailed,
    TResult Function(DetailsActionsStateMovingToActive value)? movingToActive,
    TResult Function(DetailsActionsStateMoveToActiveSuccess value)?
        moveToActiveSuccess,
    TResult Function(DetailsActionsStateMoveToActiveFailed value)?
        moveToActiveFailed,
    TResult Function(DetailsActionsStateMovingToArchive value)? movingToArchive,
    TResult Function(DetailsActionsStateMoveToArchiveSuccess value)?
        moveToArchiveSuccess,
    TResult Function(DetailsActionsStateMoveToArchiveFailed value)?
        moveToArchiveFailed,
    TResult Function(DetailsActionsStateRefreshing value)? refreshing,
    TResult Function(DetailsActionsStateRefreshSuccess value)? refreshSuccess,
    TResult Function(DetailsActionsStateRefreshFailed value)? refreshFailed,
    TResult Function(DetailsActionsStateRefreshFreqLimited value)?
        refreshFreqLimited,
    TResult Function(DetailsActionsStateSharingString value)? sharingString,
    TResult Function(DetailsActionsStateShareStringSuccess value)?
        shareStringSuccess,
    TResult Function(DetailsActionsStateCopyingTrack value)? copyingTrack,
    TResult Function(DetailsActionsStateCopyTrackSuccess value)?
        copyTrackSuccess,
    TResult Function(DetailsActionsStateActivating value)? activating,
    TResult Function(DetailsActionsStateActivateSuccess value)? activateSuccess,
    TResult Function(DetailsActionsStateActivateFailed value)? activateFailed,
    required TResult orElse(),
  }) {
    if (activateFailed != null) {
      return activateFailed(this);
    }
    return orElse();
  }
}

abstract class DetailsActionsStateActivateFailed
    implements DetailsActionsState {
  const factory DetailsActionsStateActivateFailed(
      {required StorageError error}) = _$DetailsActionsStateActivateFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsActionsStateActivateFailedCopyWith<DetailsActionsStateActivateFailed>
      get copyWith => throw _privateConstructorUsedError;
}
