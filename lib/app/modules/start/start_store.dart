import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'start_store.g.dart';

@Injectable()
class StartController = _StartControllerBase with _$StartController;

abstract class _StartControllerBase with Store {
  _StartControllerBase() {
    setIndex(currentIndex);
  }

  @observable
  int currentIndex = 0;

  @action
  void setIndex(int index) {
    currentIndex = index;

    if (index == 0) {
      Modular.to.navigate('/start/home');
    } else if (index == 1) {
      Modular.to.navigate('/start/entries');
    } else if (index == 2) {
      Modular.to.navigate('/start/config');
    } else if (index == 3) {
      Modular.to.navigate('/start/profile');
    }
  }
}
