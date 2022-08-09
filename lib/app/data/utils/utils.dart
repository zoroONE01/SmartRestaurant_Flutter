library utils;


import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../constants/colors.dart';

part 'theme_manager.dart';

part 'validator.dart';

class Utils {

  static ThemeManager get theme => ThemeManager();

  static Validator get validator => Validator();
}
