import 'package:flutter/material.dart';
///solution in https://medium.com/@eibaan_54644/reappearing-app-bar-titles-eff8b35f6826
///Shows app bar title only when the app is collapsed.
///App bar title is hidden when app bar is expanded
class ShowTitleOnAppBarCollapse extends StatefulWidget {
  final Widget child;
  const ShowTitleOnAppBarCollapse({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  _ShowTitleOnAppBarCollapseState createState() {
    return new _ShowTitleOnAppBarCollapseState();
  }
}

class _ShowTitleOnAppBarCollapseState extends State<ShowTitleOnAppBarCollapse> {
  ScrollPosition _position;
  bool _visible;
  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings settings =
        context.inheritFromWidgetOfExactType(FlexibleSpaceBarSettings);
    bool visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      child: widget.child,
    );
  }
}
