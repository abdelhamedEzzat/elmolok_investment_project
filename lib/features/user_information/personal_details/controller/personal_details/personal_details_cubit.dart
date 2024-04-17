import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'personal_details_state.dart';

class PersonalDetailsCubit extends Cubit<PersonalDetailsState> {
  PersonalDetailsCubit() : super(PersonalDetailsInitial());

  String firstName = "";
  String lastName = "";
  String birthDay = "";
  String phoneNumber = "";
}
