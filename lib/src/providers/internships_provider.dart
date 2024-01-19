
import 'package:flutter/material.dart';
import 'package:internshala_assignment/utils/app_constants.dart';

class InternshipProvider extends ChangeNotifier {
  final bool _workFromHomeSelected = false;

  final bool _partTimeSelected = false;

  final bool _jobOfferSelected = false;

  final bool _fastResponseSelected = false;

  final bool _earlyApplicantSelected = false;

  final bool _forWomenSelected = false;

  final String _selectedDuration = AppConstants.internshipDurationList[0];

  String get electedDuration => _selectedDuration;

  bool get forWomenSelected => _forWomenSelected;

  bool get earlyApplicantSelected => _earlyApplicantSelected;

  bool get fastResponseSelected => _fastResponseSelected;

  bool get jobOfferSelected => _jobOfferSelected;

  bool get partTimeSelected => _partTimeSelected;

  bool get workFromHomeSelected => _workFromHomeSelected;

  updateSelectedDuration(String value) {
    _selectedDuration == value;
    notifyListeners();
  }

  updateIsWorkFromHomeSelected(bool value) {
    _workFromHomeSelected == value;
    notifyListeners();
  }

  updateIsPartTimeSelected(bool value) {
    _partTimeSelected == value;
    notifyListeners();
  }

  updateIsJobOfferSelected(bool value) {
    _jobOfferSelected == value;
    notifyListeners();
  }

  updateIsFastResponseSelected(bool value) {
    _fastResponseSelected == value;
    notifyListeners();
  }

  updateIsEarlyApplicantSelected(bool value) {
    _earlyApplicantSelected == value;
    notifyListeners();
  }

  updateIsForWomenSelected(bool value) {
    _forWomenSelected == value;
    notifyListeners();
  }




  
}
