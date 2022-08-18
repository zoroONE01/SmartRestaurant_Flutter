import '../models/base_model.dart';

abstract class FormEvent<M extends BaseModel> {
  Future<String> submit({required M model});
}
