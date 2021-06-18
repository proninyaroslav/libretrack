// Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// This class is an InheritedWidget that exposes state of [SideBackdropScaffold]
/// [SideBackdropScaffoldState] to be accessed from anywhere below the widget tree.
///
/// It can be used to explicitly call backdrop functionality like flingStartSide,
/// concealStartSide, revealStartSide, etc.
///
/// Example:
/// ```dart
/// SideBackdrop.of(context).fling();
/// ```
class SideBackdrop extends InheritedWidget {
  /// Holds the state of this widget.
  final SideBackdropScaffoldState data;

  /// Creates a [SideBackdrop] instance.
  const SideBackdrop({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  /// Provides access to the state from everywhere in the widget tree.
  static SideBackdropScaffoldState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<SideBackdrop>()!.data;

  @override
  bool updateShouldNotify(SideBackdrop oldWidget) => true;
}

class SideBackdropScaffold extends StatefulWidget {
  /// Can be used to customize the behaviour of the start side animation.
  final AnimationController? startSideController;

  /// Can be used to customize the behaviour of the end side animation.
  final AnimationController? endSideController;

  /// Content that should be displayed on the start side.
  final Widget? startSide;

  /// Content that should be displayed on the end side.
  final Widget? endSide;

  /// Content that should be displayed on the start side,
  /// when backdrop is concealed.
  final Widget? miniStartSide;

  /// Content that should be displayed on the end side,
  /// when backdrop is concealed.
  final Widget? miniEndSide;

  /// The widget that is shown on the front layer.
  final Widget frontLayer;

  /// Defines the [BorderRadius] applied to the front layer.
  ///
  /// Defaults to
  /// ```dart
  /// const BorderRadius.only(
  ///     topLeft: Radius.circular(16.0),
  ///     topRight: Radius.circular(16.0),
  /// )
  /// ```
  final BorderRadius frontLayerBorderRadius;

  /// Defines the width of the front layer's visible part when the left/right
  /// side is revealed. The left/end side width corresponds to
  /// [BoxConstraints.biggest.width]-[frontLayerVisibleWidth].
  ///
  /// This width value is only applied, if [stickyFrontLayer]
  /// is set to `false` or if [stickyFrontLayer] is set to `true` and
  /// the left/end side width is less than
  /// [BoxConstraints.biggest.width]-[frontLayerVisibleWidth].
  ///
  /// Default value is 48.0.
  final double frontLayerVisibleWidth;

  /// A flag indicating whether the front layer should stick to the width of
  /// the left/end side when being opened.
  ///
  /// Defaults to `true`.
  final bool stickyFrontLayer;

  /// The animation curve passed to [Tween.animate]() when triggering
  /// the backdrop animation.
  ///
  /// Defaults to [Curves.easeInOut].
  final Curve animationCurve;

  /// Background [Color] for the back layer.
  ///
  /// Defaults to `Theme.of(context).primaryColor`.
  final Color? backLayerBackgroundColor;

  /// Defines the color for the inactive front layer.
  /// A default opacity of 0.7 is applied to the passed color.
  /// See [inactiveOverlayOpacity].
  ///
  /// Defaults to `const Color(0xFFEEEEEE)`.
  final Color inactiveOverlayColor;

  /// The opacity value applied to [inactiveOverlayColor] when used on the
  /// inactive layer.
  ///
  /// The inactive layer overlays the [frontLayer] when the back layer is
  /// revealed and the front layer is in a concealed state.
  ///
  /// Must be a value between `0.0` and `1.0`.
  /// Defaults to `0.7`.
  final double inactiveOverlayOpacity;

  /// Will be called when [startSide] have been concealed.
  final VoidCallback? onStartSideConcealed;

  /// Will be called when [endSide] have been concealed.
  final VoidCallback? onEndSideConcealed;

  /// Will be called when [startSide] have been revealed.
  final VoidCallback? onStartSideRevealed;

  /// Will be called when [endSide] have been revealed.
  final VoidCallback? onEndSideRevealed;

  // ------------- PROPERTIES TAKEN OVER FROM SCAFFOLD ------------- //

  /// See [Scaffold.appBar].
  final PreferredSizeWidget? appBar;

  /// See [Scaffold.extendBody].
  ///
  /// Defaults to `false`.
  final bool extendBody;

  /// See [Scaffold.extendBodyBehindAppBar].
  ///
  /// Defaults to `false`.
  final bool extendBodyBehindAppBar;

  /// See [Scaffold.floatingActionButton].
  final Widget? floatingActionButton;

  /// See [Scaffold.floatingActionButtonLocation].
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// See [Scaffold.floatingActionButtonAnimator].
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  /// See [Scaffold.persistentFooterButtons].
  final List<Widget>? persistentFooterButtons;

  /// See [Scaffold.drawer].
  final Widget? drawer;

  /// See [Scaffold.endDrawer].
  final Widget? endDrawer;

  /// See [Scaffold.drawerScrimColor].
  final Color? drawerScrimColor;

  /// See [Scaffold.backgroundColor].
  final Color? backgroundColor;

  /// See [Scaffold.bottomNavigationBar].
  final Widget? bottomNavigationBar;

  /// See [Scaffold.bottomSheet].
  final Widget? bottomSheet;

  /// See [Scaffold.resizeToAvoidBottomInset].
  ///
  /// Defaults to `true`.
  final bool? resizeToAvoidBottomInset;

  /// See [Scaffold.primary].
  ///
  /// Defaults to `true`.
  final bool primary;

  /// See [Scaffold.drawerDragStartBehavior].
  ///
  /// Defaults to `DragStartBehavior.start`.
  final DragStartBehavior drawerDragStartBehavior;

  /// See [Scaffold.drawerEdgeDragWidth].
  final double? drawerEdgeDragWidth;

  /// See [Scaffold.drawerEnableOpenDragGesture].
  ///
  /// Defaults to `true`.
  final bool drawerEnableOpenDragGesture;

  /// See [Scaffold.endDrawerEnableOpenDragGesture].
  ///
  /// Defaults to `true`.
  final bool endDrawerEnableOpenDragGesture;

  const SideBackdropScaffold({
    Key? key,
    this.startSideController,
    this.endSideController,
    this.startSide,
    this.endSide,
    this.miniStartSide,
    this.miniEndSide,
    required this.frontLayer,
    this.frontLayerBorderRadius = const BorderRadius.only(
      topLeft: Radius.circular(16.0),
      topRight: Radius.circular(16.0),
    ),
    this.frontLayerVisibleWidth = 48.0,
    this.stickyFrontLayer = true,
    this.animationCurve = Curves.easeInOut,
    this.backLayerBackgroundColor,
    this.inactiveOverlayColor = const Color(0xFFEEEEEE),
    this.inactiveOverlayOpacity = 0.7,
    this.onStartSideConcealed,
    this.onEndSideConcealed,
    this.onStartSideRevealed,
    this.onEndSideRevealed,
    this.appBar,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.endDrawer,
    this.drawerScrimColor,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
  })  : assert(inactiveOverlayOpacity >= 0.0 && inactiveOverlayOpacity <= 1.0),
        assert(
          startSide != null || endSide != null,
          'StartSide or/and endSide must be provided',
        ),
        super(key: key);

  @override
  SideBackdropScaffoldState createState() => SideBackdropScaffoldState();
}

enum _SideType {
  start,
  end,
}

/// This class is used to represent the internal state of [SideBackdropScaffold].
/// It provides access to the functionality for triggering backdrop. As well it
/// offers ways to retrieve the current state of the [SideBackdropScaffold]'s
/// front layer and left/end sides (concealed/revealed).
///
/// An instance of this class is automatically created with the use of
/// [SideBackdropScaffold] and can be accessed using `SideBackdrop.of(context)`
/// from within the widget tree below [SideBackdropScaffold].
class SideBackdropScaffoldState extends State<SideBackdropScaffold>
    with TickerProviderStateMixin {
  bool _shouldDisposeStartController = false;
  bool _shouldDisposeEndController = false;

  late AnimationController _startController;
  late AnimationController _endController;

  /// Key for accessing the [ScaffoldState] of [SideBackdropScaffold]'s internally
  /// used [Scaffold].
  final scaffoldKey = GlobalKey<ScaffoldState>();

  double _startSideWidth = 0.0;
  double _endSideWidth = 0.0;
  double _miniStartSideWidth = 0.0;
  double _miniEndSideWidth = 0.0;

  _SideType _currentActiveSide = _SideType.start;

  /// [AnimationController] used for the start side animation.
  ///
  /// Defaults to
  /// ```dart
  /// AnimationController(
  ///     vsync: this,
  ///     duration: const Duration(milliseconds: 200),
  ///     value: 1.0,
  ///   )
  /// ```
  AnimationController get startSideController => _startController;

  /// [AnimationController] used for the end side animation.
  ///
  /// Defaults to
  /// ```dart
  /// AnimationController(
  ///     vsync: this,
  ///     duration: const Duration(milliseconds: 200),
  ///     value: 1.0,
  ///   )
  /// ```
  AnimationController get endSideController => _endController;

  @override
  void initState() {
    super.initState();

    _startController = widget.startSideController ??
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 200),
          value: 1.0,
        );
    if (widget.startSideController == null) {
      _shouldDisposeStartController = true;
    }
    _endController = widget.endSideController ??
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 200),
          value: 1.0,
        );
    if (widget.endSideController == null) {
      _shouldDisposeEndController = true;
    }

    // This is intentionally left empty. The state change itself takes
    // place inside the AnimationController, so there's nothing to update.
    // All we want is for the widget to rebuild and read the new animation
    // state from the AnimationController.
    // see https://github.com/flutter/flutter/pull/55414/commits/72d7d365be6639271a5e88ee3043b92833facb79
    _startController.addStatusListener((status) {
      setState(() {});
    });
    _endController.addStatusListener((status) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();

    if (_shouldDisposeStartController) {
      _startController.dispose();
    }
    if (_shouldDisposeEndController) {
      _endController.dispose();
    }
  }

  /// Wether the start side is concealed or not.
  bool get isStartSideConcealed =>
      startSideController.status == AnimationStatus.completed ||
      startSideController.status == AnimationStatus.forward;

  /// Wether the end side is concealed or not.
  bool get isEndSideConcealed =>
      endSideController.status == AnimationStatus.completed ||
      endSideController.status == AnimationStatus.forward;

  /// Whether the start side is revealed or not.
  bool get isStartSideRevealed =>
      startSideController.status == AnimationStatus.dismissed ||
      startSideController.status == AnimationStatus.reverse;

  /// Whether the end side is revealed or not.
  bool get isEndSideRevealed =>
      endSideController.status == AnimationStatus.dismissed ||
      endSideController.status == AnimationStatus.reverse;

  /// Toggles the backdrop functionality.
  ///
  /// If the start side was concealed, it is animated to the "revealed" state
  /// by this function. If it was revealed, this function will animate it to
  /// the "concealed" state.
  void flingStartSide() {
    FocusScope.of(context).unfocus();
    if (isStartSideConcealed) {
      revealStartSide();
    } else {
      concealStartSide();
    }
  }

  /// Toggles the backdrop functionality.
  ///
  /// If the end side was concealed, it is animated to the "revealed" state
  /// by this function. If it was revealed, this function will animate it to
  /// the "concealed" state.
  void flingEndSide() {
    FocusScope.of(context).unfocus();
    if (isEndSideConcealed) {
      revealEndSide();
    } else {
      concealEndSide();
    }
  }

  /// Animates the start side to the "revealed" state.
  void revealStartSide() {
    if (isStartSideConcealed) {
      if (isEndSideRevealed) {
        concealEndSide();
      }
      _currentActiveSide = _SideType.start;
      startSideController.animateBack(-1.0);
      widget.onStartSideRevealed?.call();
    }
  }

  /// Animates the end side to the "revealed" state.
  void revealEndSide() {
    if (isEndSideConcealed) {
      if (isStartSideRevealed) {
        concealStartSide();
      }
      _currentActiveSide = _SideType.end;
      endSideController.animateBack(-1.0);
      widget.onEndSideRevealed?.call();
    }
  }

  /// Animates the start side to the "concealed" state.
  void concealStartSide() {
    if (isStartSideRevealed) {
      startSideController.animateTo(1.0);
      widget.onStartSideConcealed?.call();
    }
  }

  /// Animates the start side to the "concealed" state.
  void concealEndSide() {
    if (isEndSideRevealed) {
      endSideController.animateTo(1.0);
      widget.onEndSideConcealed?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideBackdrop(
      data: this,
      child: Builder(
        builder: (context) => _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        key: scaffoldKey,
        appBar: widget.appBar,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                _buildBackPanel(),
                PositionedTransition(
                  rect: _getPanelAnimation(context, constraints),
                  child: _buildFrontPanel(context),
                ),
              ],
            );
          },
        ),
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
        floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
        persistentFooterButtons: widget.persistentFooterButtons,
        drawer: widget.drawer,
        endDrawer: widget.endDrawer,
        bottomNavigationBar: widget.bottomNavigationBar,
        bottomSheet: widget.bottomSheet,
        backgroundColor: widget.backgroundColor,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        primary: widget.primary,
        drawerDragStartBehavior: widget.drawerDragStartBehavior,
        extendBody: widget.extendBody,
        extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
        drawerScrimColor: widget.drawerScrimColor,
        drawerEdgeDragWidth: widget.drawerEdgeDragWidth,
        drawerEnableOpenDragGesture: widget.drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture,
      ),
    );
  }

  Future<bool> _willPopCallback(BuildContext context) async {
    switch (_currentActiveSide) {
      case _SideType.start:
        if (isStartSideRevealed) {
          concealStartSide();
          return false;
        }
        return true;
      case _SideType.end:
        if (isEndSideRevealed) {
          concealEndSide();
          return false;
        }
        return true;
      default:
        throw UnsupportedError('Unknown side: $_currentActiveSide');
    }
  }

  Widget _buildFrontPanel(BuildContext context) {
    return Row(
      children: [
        Offstage(
          offstage: startSideController.status != AnimationStatus.completed,
          child: _MeasureSize(
            onChange: (size) => _miniStartSideWidth = size.width,
            child: widget.miniStartSide ?? const SizedBox.shrink(),
          ),
        ),
        if (startSideController.status != AnimationStatus.completed)
          // Prevent front layer size changing
          SizedBox.fromSize(size: Size.fromWidth(_miniStartSideWidth))
        else
          const SizedBox.shrink(),
        Flexible(
          child: Material(
            elevation: 1.0,
            borderRadius: widget.frontLayerBorderRadius,
            child: ClipRRect(
              borderRadius: widget.frontLayerBorderRadius,
              child: Stack(
                children: [
                  widget.frontLayer,
                  _buildInactiveLayer(context),
                ],
              ),
            ),
          ),
        ),
        if (endSideController.status != AnimationStatus.completed)
          // Prevent front layer size changing
          SizedBox.fromSize(size: Size.fromWidth(_miniEndSideWidth))
        else
          const SizedBox.shrink(),
        Offstage(
          offstage: endSideController.status != AnimationStatus.completed,
          child: _MeasureSize(
            onChange: (size) => _miniEndSideWidth = size.width,
            child: widget.miniEndSide ?? const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }

  Widget _buildInactiveLayer(BuildContext context) {
    final controller = _getCurrentController();
    return Offstage(
      offstage: controller.status == AnimationStatus.completed,
      child: FadeTransition(
        opacity: Tween(begin: 1.0, end: 0.0).animate(controller),
        child: GestureDetector(
          onTap: () => _flingCurrent(),
          behavior: HitTestBehavior.opaque,
          child: Container(
            color: widget.inactiveOverlayColor
                .withOpacity(widget.inactiveOverlayOpacity),
          ),
        ),
      ),
    );
  }

  void _flingCurrent() {
    switch (_currentActiveSide) {
      case _SideType.start:
        flingStartSide();
        break;
      case _SideType.end:
        flingEndSide();
        break;
      default:
        throw UnsupportedError('Unknown side: $_currentActiveSide');
    }
  }

  AnimationController _getCurrentController() {
    switch (_currentActiveSide) {
      case _SideType.start:
        return startSideController;
      case _SideType.end:
        return endSideController;
      default:
        throw UnsupportedError('Unknown side: $_currentActiveSide');
    }
  }

  Animation<RelativeRect> _getPanelAnimation(
    BuildContext context,
    BoxConstraints constraints,
  ) {
    double backPanelWidth, frontPanelWidth, sideWidth, miniSideWidth;
    final frontLayerVisibleWidth = widget.frontLayerVisibleWidth;

    switch (_currentActiveSide) {
      case _SideType.start:
        sideWidth = _startSideWidth;
        miniSideWidth = _miniStartSideWidth;
        break;
      case _SideType.end:
        sideWidth = _endSideWidth;
        miniSideWidth = _miniEndSideWidth;
        break;
      default:
        throw UnsupportedError('Unknown side: $_currentActiveSide');
    }

    if (widget.stickyFrontLayer &&
        sideWidth < constraints.biggest.width - frontLayerVisibleWidth) {
      // width is adapted to the width of the start/end side
      backPanelWidth = sideWidth;
      frontPanelWidth = sideWidth;
    } else {
      // width is set to fixed value defined in widget.frontLayerVisibleWidth
      final width = constraints.biggest.width;
      backPanelWidth = width - frontLayerVisibleWidth;
      frontPanelWidth = backPanelWidth;
    }

    final leftToRight = RelativeRect.fromLTRB(
      backPanelWidth - miniSideWidth,
      0.0,
      -frontPanelWidth,
      0.0,
    );
    final rightToLeft = RelativeRect.fromLTRB(
      -backPanelWidth,
      0.0,
      frontPanelWidth - miniSideWidth,
      0.0,
    );

    RelativeRect begin;
    final textDirection = Directionality.of(context);
    switch (_currentActiveSide) {
      case _SideType.start:
        if (textDirection == TextDirection.ltr) {
          begin = leftToRight;
        } else {
          begin = rightToLeft;
        }
        break;
      case _SideType.end:
        if (textDirection == TextDirection.ltr) {
          begin = rightToLeft;
        } else {
          begin = leftToRight;
        }
        break;
      default:
        throw UnsupportedError('Unknown side: $_currentActiveSide');
    }

    return RelativeRectTween(
      begin: begin,
      end: const RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _getCurrentController(),
        curve: widget.animationCurve,
      ),
    );
  }

  Widget _buildBackPanel() {
    return Material(
      color: widget.backLayerBackgroundColor ?? Theme.of(context).primaryColor,
      child: IndexedStack(
        index: _currentActiveSide.index,
        children: [
          FocusScope(
            canRequestFocus: isStartSideRevealed,
            child: Row(
              children: [
                Flexible(
                  child: _MeasureSize(
                    onChange: (size) {
                      setState(() => _startSideWidth = size.width);
                    },
                    child: widget.startSide ?? const SizedBox.shrink(),
                  ),
                )
              ],
            ),
          ),
          FocusScope(
            canRequestFocus: isEndSideRevealed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: _MeasureSize(
                    onChange: (size) {
                      setState(() => _endSideWidth = size.width);
                    },
                    child: widget.endSide ?? const SizedBox.shrink(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget to get size of child widget
/// Credit: https://stackoverflow.com/a/60868972/2554745
class _MeasureSize extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onChange;

  const _MeasureSize({
    Key? key,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  _MeasureSizeState createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<_MeasureSize> {
  final widgetKey = GlobalKey();
  Size? oldSize;

  void _notify() {
    final context = widgetKey.currentContext;
    if (context == null) return;

    final newSize = context.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChange(newSize!);
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback((_) => _notify());
    return NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (_) {
        SchedulerBinding.instance!.addPostFrameCallback((_) => _notify());
        return true;
      },
      child: SizeChangedLayoutNotifier(
        child: Container(
          key: widgetKey,
          child: widget.child,
        ),
      ),
    );
  }
}
