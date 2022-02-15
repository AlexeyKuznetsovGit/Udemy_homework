import 'package:eticon_nasa/models/mars_photo.dart';

abstract class HomeScreenState {}

class HomeScreenLoadingState extends HomeScreenState {}

class HomeScreenLoadedState extends HomeScreenState {
  List<Photos> loadedRover;

  HomeScreenLoadedState({required this.loadedRover});
}

class HomeScreenErrorState extends HomeScreenState {
  final String errorMsg;

  HomeScreenErrorState({required this.errorMsg});
}
