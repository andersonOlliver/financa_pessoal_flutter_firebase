import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'new_fuel_controller.g.dart';

@Injectable()
class NewFuelController = _NewFuelControllerBase with _$NewFuelController;

abstract class _NewFuelControllerBase with Store {}
