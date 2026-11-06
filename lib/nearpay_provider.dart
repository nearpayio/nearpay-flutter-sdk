import 'package:nearpay_flutter_sdk/listeners/listeners.dart';
import 'package:nearpay_flutter_sdk/nearpay.dart';

class NearpayProvider {
  final Nearpay nearpay;
  late final NearpayListener _listener;

  NearpayProvider(this.nearpay) {
    _listener = NearpayListener(this);
  }

  NearpayListener get listener => _listener;
}
