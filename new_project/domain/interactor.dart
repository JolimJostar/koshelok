import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medtech/base/either.dart';
import 'package:medtech/base_main.dart';
import 'package:medtech/feature/managers/domain/model/user.dart';
import 'package:medtech/feature/project/domain/project_details.dart';
import 'package:medtech/feature/new_project/domain/model/create_draft_project_details.dart';

import 'model/create_project_details.dart';

final newProjectInteractorProvider = Provider((ref) {
  return NewProjectInteractor(dio: ref.read(dioProvider));
});

class NewProjectInteractor {
  const NewProjectInteractor({required this.dio});

  final Dio dio;

  Future<Either<Exception, List<User>>> getManagers() async {
    return attempt(() async {
      final response = await dio.get('/users/managers');
      final list = response.data['data'].map<User>((user) => User.fromJson(user)).toList();
      final newList = list;
      return newList;
    });
  }

  Future<Either<Exception, String>> uploadPresentation({
    required List<int> bytes,
    required String filename,
    required int projectId,
    required int fundRequestId,
  }) {
    return attempt(() async {
      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(bytes, filename: filename),
      });
      final response = await dio.post('/projects/$projectId/fund-request/$fundRequestId/attachments', data: formData);
      return response.data;
    });
  }

  Future<Either<Exception, void>> deletePresentation({
    required int projectId,
    required int fundRequestId,
  }) {
    return attempt(() async {
      await dio.delete('/projects/$projectId/fund-request/$fundRequestId/attachments');
    });
  }

  Future<Either<Exception, void>> deleteAvatar({required int projectId}) {
    return attempt(() async {
      await dio.delete(
        '/projects/attachments/file',
        queryParameters: {
          'projectId': projectId,
        },
      );
    });
  }

  Future<Either<Exception, ProjectDetails>> createNewProject(CreateProjectDetails createProjectDetails) async {
    return attempt(() async {
      final response = await dio.post(
        '/projects',
        data: createProjectDetails.toJson(),
      );

      return ProjectDetails.fromJson(response.data);
    });
  }

  Future<Either<Exception, String>> uploadContract({
    required List<int> bytes,
    required String filename,
    required int projectId,
  }) {
    return attempt(() async {
      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(bytes, filename: filename),
      });
      final response = await dio.post('/projects/$projectId/resident/contract', data: formData);
      return response.data;
    });
  }

  Future<Either<Exception, void>> deleteContract({
    required int projectId,
  }) {
    return attempt(() async {
      await dio.delete('/projects/$projectId/resident/contract');
    });
  }

  Future<Either<Exception, ProjectDetails>> createDraft(
    CreateDraftProjectDetails createDraftProjectDetails,
  ) async {
    return attempt(() async {
      final response = await dio.post(
        '/projects',
        data: createDraftProjectDetails.toJson(),
      );
      return ProjectDetails.fromJson(response.data);
    });
  }
}
