import 'package:financa_pessoal/app/core/util/function.dart';
import 'package:financa_pessoal/app/modules/category/model/category_label_dto.dart';
import 'package:financa_pessoal/app/modules/payment/model/payment_label_dto.dart';
import 'package:financa_pessoal/app/modules/payment/model/payment_model.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/dto/new_fuel_dto.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/enum/fuel_type_enum.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'new_fuel_controller.g.dart';

@Injectable()
class NewFuelController = _NewFuelControllerBase with _$NewFuelController;

abstract class _NewFuelControllerBase with Store {
  @observable
  FuelType type = FuelType.ALCOOL;
  @observable
  double value = 0;
  @observable
  String title = '';
  @observable
  PaymentLabelDto payment = PaymentLabelDto.empty();
  @observable
  CategoryLabelDto category = CategoryLabelDto.empty();
  @observable
  double liter = 0;
  @observable
  double valueByLiter = 0;
  @observable
  int kilometers = 0;

  @observable
  bool isAdvanced = false;

  @observable
  DateTime createdAt = DateTime.now();

  @computed
  bool get hasAutoFocus => value == 0;

  @action
  void setType(FuelType v) => type = v;

  @action
  void setValue(String v) {
    value = getDecimalValue(v);
    print(value);
  }

  @action
  void setPayment(PaymentLabelDto v) => payment = v;

  @action
  void setCategory(CategoryLabelDto v) => category = v;

  @action
  void setLiter(String v) => liter = getDecimalValue(v);

  @action
  void setValueByLiter(String v) => valueByLiter = getDecimalValue(v);

  @action
  void setCreatedAt(DateTime v) => createdAt = v;

  @action
  void setAdvanced(bool isAdvanced) => this.isAdvanced = isAdvanced;

  @computed
  NewFuel get newFuel => NewFuel.create(
        value: value,
        title: title,
        category: category,
        payment: payment,
        liter: liter,
        valueByLiter: valueByLiter,
        kilometers: kilometers,
        type: type,
      );

  @action
  void save() {
    print(newFuel.toJson());
  }
}
