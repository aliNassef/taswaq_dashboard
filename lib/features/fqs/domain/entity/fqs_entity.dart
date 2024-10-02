import '../../../../core/services/end_ponits.dart';

class FqsEntity {
  final String id;
  final String question;
  final String answer;

  FqsEntity({
    required this.id,
    required this.question,
    required this.answer,
  });

  Map<String, dynamic> toMap() {
    return {
      ApiKey.id: id,
      ApiKey.question: question,
      ApiKey.answer: answer,
    };
  }
}
