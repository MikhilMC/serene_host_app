import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_models/register_response_model/register_response_model.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/class/document_upload_details.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/service/upload_documents.dart';

part 'document_upload_event.dart';
part 'document_upload_state.dart';
part 'document_upload_bloc.freezed.dart';

class DocumentUploadBloc
    extends Bloc<DocumentUploadEvent, DocumentUploadState> {
  DocumentUploadBloc() : super(_Initial()) {
    on<_documentUploaded>((event, emit) async {
      emit(DocumentUploadState.loading());
      try {
        final response = await uploadDocuments(
          hostId: event.hostId,
          documentUploadDetails: event.documents,
        );
        emit(DocumentUploadState.success(response));
      } catch (e) {
        emit(DocumentUploadState.failure(e.toString()));
      }
    });
  }
}
