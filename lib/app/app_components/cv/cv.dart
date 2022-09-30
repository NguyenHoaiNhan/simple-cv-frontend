library cv;

import 'dart:html';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/app_components/sections/personal_detail/personal_details_section.dart';
import 'package:simple_cv/app/common_widgets/action_button.dart';
import 'package:simple_cv/app/common_widgets/date_field.dart';
import 'package:simple_cv/app/common_widgets/photo_view.dart';
import 'package:simple_cv/app/common_widgets/text_field.dart';
import 'package:simple_cv/app/common_widgets/text_field_option.dart';
import 'package:simple_cv/config/app_color.dart';
import 'package:simple_cv/utils/common_funcs.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

part 'cv_page.dart';
part 'cv_container.dart';
part 'cubit/cv_cubit.dart';
part 'cubit/cv_state.dart';
part 'widgets/left_side.dart';
part 'widgets/right_side.dart';
