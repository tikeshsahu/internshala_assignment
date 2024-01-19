import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:internshala_assignment/src/models/internship_model.dart';
import 'package:internshala_assignment/utils/app_constants.dart';

class ApiRepository {
  ApiRepository._();

  static final instance = ApiRepository._();

  Future getInternships() async {
    final response = await http.get(Uri.parse("${AppConstants.baseUri}/flutter_hiring/search"));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final Map<String, dynamic> internshipsMeta = data['internships_meta'];
      final List<Internship> internships = internshipsMeta.values.map((internshipData) {
        return Internship.fromJson(internshipData);
      }).toList();

      return internships;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
