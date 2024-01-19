

class AppConstants{

  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;

  static const String baseUri = "https://internshala.com";

  static const String imageUrl = "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg";

  static const List internshipDurationList = [
    {"label": "Choose Duration", "value": ""},
    {"label": "1 Months", "value": "1"},
    {"label": "2 Months", "value": "2"},
    {"label": "3 Months", "value": "3"},
    {"label": "4 Months", "value": "4"},
    {"label": "6 Months", "value": "6"},
    {"label": "12 Months", "value": "12"},
    {"label": "24 Months", "value": "24"},
  ];
}