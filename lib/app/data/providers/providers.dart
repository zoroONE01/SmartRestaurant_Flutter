library providers;

import 'package:dio/dio.dart';
import 'package:smart_restaurant_flutter/app/data/exceptions/exceptions.dart';

import '../events/form_event.dart';
import '../helpers/helpers.dart';
import '../models/sign_in_model.dart';
import '../models/sign_up_model.dart';

part 'sign_in_provider.dart';

part 'sign_up_provider.dart';

class Providers {
  Providers._();

  static SignInProvider get signIn => SignInProvider();

  static SignUpProvider get signUp => SignUpProvider();
}
