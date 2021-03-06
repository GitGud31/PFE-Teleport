import 'package:flutter/material.dart';
import 'AppBloc.dart';

// A class made to provide the streams to the widget tree
class BlocProvider extends InheritedWidget {
  final AppBloc bloc;

  BlocProvider({Key key, this.bloc, child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static AppBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bloc;
}
