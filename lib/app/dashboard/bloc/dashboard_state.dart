import 'package:equatable/equatable.dart';
import 'package:simple_cv/data/models/cv/cv_model.dart';

class DashboardState extends Equatable {
  const DashboardState({
    this.lstCVs = const [],
    this.isLoading = true,
  });

  final List<CVModel> lstCVs;
  final bool isLoading;

  DashboardState copyWith({
    List<CVModel>? lstCVs,
    bool? isLoading,
  }) {
    return DashboardState(
      lstCVs: lstCVs ?? this.lstCVs,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        lstCVs,
        isLoading,
      ];
}
