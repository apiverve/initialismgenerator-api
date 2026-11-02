/// Response models for the Initialism Generator API.

/// API Response wrapper.
class InitialismgeneratorResponse {
  final String status;
  final dynamic error;
  final InitialismgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  InitialismgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory InitialismgeneratorResponse.fromJson(Map<String, dynamic> json) => InitialismgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InitialismgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Initialism Generator API.

class InitialismgeneratorData {
  String? initialism;
  String? phrase;
  num? wordCount;
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
