import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cv/app/cv/cv_generator_page.dart';
import 'package:simple_cv/app/dashboard/bloc/dashboard_cubit.dart';
import 'package:simple_cv/app/dashboard/bloc/dashboard_state.dart';
import 'package:simple_cv/app/dashboard/dashboard_components/cv_item.dart';
import 'package:simple_cv/config/ui_values.dart';
import 'package:simple_cv/data/models/cv/cv_model.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpan.defaultPagePadding),
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return Container(
              width: 100,
              height: 100,
              color: Colors.red,
            );

            if (state.isLoading) {
              return const Center(
                child: Text('Loading...'),
              );
            }

            return GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: AppSpan.defaultPagePadding,
              mainAxisSpacing: AppSpan.defaultPagePadding,
              children: _buildItem(context, state.lstCVs),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildItem(BuildContext context, List<CVModel> lst) {
    return lst
        .map(
          (e) => CVItem(
            cvId: e.cvId!,
            createDate: e.createDate.toString(),
            onTap: () => redirectToCVGenerator(context, e.cvId!),
          ),
        )
        .toList();
  }

  void redirectToCVGenerator(BuildContext context, String cvId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CVGeneratorPage(cvId: cvId),
      ),
    );
  }
}
