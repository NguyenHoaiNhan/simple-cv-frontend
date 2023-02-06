import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/cv/cv_generator_page.dart';
import 'package:simple_cv/app/dashboard/bloc/dashboard_state.dart';
import 'package:simple_cv/data/models/api_response.dart';
import 'package:simple_cv/data/models/cv/cv_model.dart';
import 'package:simple_cv/network/api_urls.dart';
import 'package:simple_cv/network/request_actions.dart';
import 'package:simple_cv/services/app_service.dart';
import 'package:simple_cv/utils/common_funcs.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit({
    required this.accountId,
  }) : super(const DashboardState());

  final String accountId;

  void init({
    required BuildContext context,
  }) async {
    try {
      final lstCVs = await getCVsByAccountId(
        context: context,
      );

      emit(
        state.copyWith(
          isLoading: false,
          lstCVs: lstCVs,
        ),
      );
    } catch (ex) {
      print(ex.toString());
    }
  }

  Future<List<CVModel>> getCVsByAccountId({
    required BuildContext context,
  }) async {
    final response = await RequestActions.get(
      url: ApiUrls.linkApiToGetCVsByAccountId(accountId),
      token: AppService.instance.token,
    );

    final ApiResponse result = RequestActions.getResponseBody(
      response: response,
      context: context,
    );

    if (!result.success) {
      CommonFuncs.showNoti(
        context,
        content: "Oops! We can't find your resumes.",
      );
      return [];
    }

    final Iterable val = json.decode(result.data!);
    return List<CVModel>.from(
      val.map(
        (e) => CVModel.fromJson(e),
      ),
    );
  }

  void editCVByCVId({
    required BuildContext context,
    required cvId,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CVGeneratorPage(cvId: cvId),
      ),
    );
  }

  void renameCVByCVId() {}

  void downloadCVByCVId() {}

  void deleteCVByCVId() {}

  void duplicateCVByCVId() {}
}
