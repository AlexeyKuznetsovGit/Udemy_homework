import 'package:eticon_api/eticon_api.dart';
import 'package:eticon_nasa/common/constants.dart';
import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:eticon_nasa/screens/home/cubit/home_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenLoadingState());

  Future<void> getRovers() async {
    try {
      Map<String, dynamic> response =
          await Api.get(method: Constants.METHOD_GET, query: {
        'api_key': Constants.API_KEY,
        'sol': Constants.SOL,
      });
      List<Photos> convertData = (response['photos'] as List)
          .map((rover) => Photos.fromJson(rover))
          .toList();
      emit(HomeScreenLoadedState(loadedRover: convertData));
    } on APIException catch (error) {
      if (error.code == 0) {
        emit(HomeScreenErrorState(errorMsg: 'No internet connection'));
      } else {
        emit(HomeScreenErrorState(errorMsg: 'Sorry, unknown error'));
      }
    }
  }
}
