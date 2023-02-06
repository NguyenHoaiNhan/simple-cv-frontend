import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/dashboard/bloc/dashboard_cubit.dart';
import 'package:simple_cv/app/dashboard/dashboard_view/dashboard_view.dart';
import 'package:simple_cv/services/app_service.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var i = AppService.instance.accountId!;
    var n = AppService.instance.accountName;

    return BlocProvider(
      create: (_) => DashboardCubit(
        accountId: AppService.instance.accountId!,
      )..init(context: context),
      child: const DashboardView(),
    );
  }
}
