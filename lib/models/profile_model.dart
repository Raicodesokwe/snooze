class ProfileModel {
  final String number;
  final String label;

  ProfileModel({required this.number, required this.label});
}

List<ProfileModel> profileList = [
  ProfileModel(number: '39', label: 'points'),
  ProfileModel(number: '2', label: 'Number of\nFree passes'),
  ProfileModel(number: '0.2ETH', label: 'Estimated\nReward'),
  ProfileModel(number: '7:30', label: 'Avg wake up\ntime'),
  ProfileModel(number: '8099', label: 'Total calories\nburnt'),
  ProfileModel(number: '98:32', label: 'Total activity\ntime'),
];
