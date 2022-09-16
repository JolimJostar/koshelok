import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_fund_request.freezed.dart';
part 'create_fund_request.g.dart';

@freezed
class CreateFundRequest with _$CreateFundRequest {
  const factory CreateFundRequest({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'sum') double? sum,
    @JsonKey(name: 'isAttachmentsAccepted') required bool isAttachmentsAccepted,
    @JsonKey(name: 'fundRequestSourcesIds') List<int>? fundRequestSourceIds,
  }) = _CreateFundRequest;

  factory CreateFundRequest.fromJson(Map<String, dynamic> json) => _$CreateFundRequestFromJson(json);
}

@freezed
class CreateFundRequestSource with _$CreateFundRequestSource {
  const factory CreateFundRequestSource({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _CreateFundRequestSource;

  factory CreateFundRequestSource.fromJson(Map<String, dynamic> json) => _$CreateFundRequestSourceFromJson(json);
}

@freezed
class CreateFundRequestNavigationResult with _$CreateFundRequestNavigationResult {
  const factory CreateFundRequestNavigationResult({
    required int? id,
    required String uuid,
    required double sum,
    required bool isAttachmentsAccepted,
    required String? presentationFilename,
    required List<int>? presentationBytes,
    required List<CreateFundRequestSource> createFundRequestSources,
  }) = _CreateFundRequestNavigationResult;
}
