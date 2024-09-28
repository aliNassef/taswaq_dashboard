import 'package:flutter_bloc/flutter_bloc.dart';

import 'terms_condation_state.dart';

class TermsCondationCubit extends Cubit<TermsCondationState> {
  TermsCondationCubit() : super(TermsCondationInitial());
}
