part of 'document_upload_bloc.dart';

@freezed
class DocumentUploadEvent with _$DocumentUploadEvent {
  const factory DocumentUploadEvent.started() = _Started;
  const factory DocumentUploadEvent.documentUploaded(
    int hostId,
    DocumentUploadDetails documents,
  ) = _documentUploaded;
}
