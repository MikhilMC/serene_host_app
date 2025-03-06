part of 'document_upload_bloc.dart';

@freezed
class DocumentUploadState with _$DocumentUploadState {
  const factory DocumentUploadState.initial() = _Initial;
  const factory DocumentUploadState.loading() = _loading;
  const factory DocumentUploadState.success(
    RegisterResponseModel response,
  ) = _success;
  const factory DocumentUploadState.failure(
    String errorMessage,
  ) = _failure;
}
