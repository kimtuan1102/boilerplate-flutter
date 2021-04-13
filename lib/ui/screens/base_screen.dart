import 'package:boilerplate_flutter/core/viewmodels/base_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final T model;
  final Widget child;
  final Function(T) onModelReady;

  const BaseScreen(
      {Key key, this.builder, this.model, this.onModelReady, this.child})
      : super(key: key);

  @override
  _BaseScreenState<T> createState() => _BaseScreenState<T>();
}

class _BaseScreenState<T extends BaseModel> extends State<BaseScreen<T>> {
  T model;

  @override
  void initState() {
    model = widget.model;
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}
