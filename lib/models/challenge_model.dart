class ChallengeModel {
  final String number;
  final String label;

  ChallengeModel({required this.number, required this.label});
}

List<ChallengeModel> challengeList = [
  ChallengeModel(number: '1.3k', label: 'Number of\nparticipants'),
  ChallengeModel(number: '120', label: 'Successfully\nfinished'),
  ChallengeModel(number: '980', label: 'Total price\nclaimed'),
];
