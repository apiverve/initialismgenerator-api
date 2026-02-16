/// Response models for the Initialism Generator API.

/// API Response wrapper.
class InitialismgeneratorResponse {
  final String status;
  final dynamic error;
  final InitialismgeneratorData? data;

  InitialismgeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory InitialismgeneratorResponse.fromJson(Map<String, dynamic> json) => InitialismgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InitialismgeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Initialism Generator API.

class InitialismgeneratorData {
  String? initialism;
  String? phrase;
  int? wordCount;
  List<String>? words;

  InitialismgeneratorData({
    this.initialism,
    this.phrase,
    this.wordCount,
    this.words,
  });

  factory InitialismgeneratorData.fromJson(Map<String, dynamic> json) => InitialismgeneratorData(
      initialism: json['initialism'],
      phrase: json['phrase'],
      wordCount: json['wordCount'],
      words: (json['words'] as List?)?.cast<String>(),
    );
}

class InitialismgeneratorRequest {
  String phrase;
  bool? uppercase;

  InitialismgeneratorRequest({
    required this.phrase,
    this.uppercase,
  });

  Map<String, dynamic> toJson() => {
      'phrase': phrase,
      if (uppercase != null) 'uppercase': uppercase,
    };
}
