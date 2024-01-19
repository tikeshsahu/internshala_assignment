

class Internship {
  final bool isActive;
  final String title;
  final String companyName;
  final String companyLogo;
  final bool workFromHome;
  final List<String> locationNames;
  final String startDate;
  final String duration;
  final Map<String, dynamic> stipend;
  final String employmentType;
  final String postedOn;

  Internship({
    required this.isActive,
    required this.title,
    required this.companyName,
    required this.companyLogo,
    required this.workFromHome,
    required this.locationNames,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.employmentType,
    required this.postedOn,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      isActive: json['is_active'] ?? false,
      title: json['title'] ?? '',
      companyName: json['company_name'] ?? '',
      companyLogo: json['company_logo'] ?? '',
      workFromHome: json['work_from_home'] ?? false,
      locationNames: List<String>.from(json['location_names'] ?? []),
      startDate: json['start_date'] ?? '',
      duration: json['duration'] ?? '',
      stipend: json['stipend'] ?? {},
      employmentType: json['employment_type'] ?? '',
      postedOn: json['posted_on'] ?? '',
    );
  }
}
