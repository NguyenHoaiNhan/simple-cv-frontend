part of cv;

class CVCubit extends Cubit<CVState> {
  CVCubit() : super(const CVState());

  void init() {
    emit(state.copyWith(sections: [
      PersonalDetailsSection(),
    ]));
  }
}
