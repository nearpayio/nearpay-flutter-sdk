import 'dart:async';

import 'package:event_listener/event_listener.dart';
import 'package:nearpay_flutter_sdk/nearpay_provider.dart';
import 'package:nearpay_flutter_sdk/types.dart';

enum NearpayEvent {
  stateChange;
}

class NearpayListener {
  final NearpayProvider _provider;
  final target = EventListener();

  NearpayListener(this._provider);

  Function addEventListener(
      {required NearpayEvent evnetName,
      required dynamic Function(dynamic) callback}) {
    target.on(evnetName.toString(), callback);
    return () => target.removeEventListener(evnetName.toString(), callback);
  }

  void emitStateChange(NearpayState state) {
    target.emit(NearpayEvent.stateChange.toString(), {"state": state});
  }
}
