import 'package:eticon_nasa/screens/detail/detail_rover_page.dart';
import 'package:eticon_nasa/screens/home/components/rover_card.dart';
import 'package:eticon_nasa/screens/home/cubit/home_screen_cubit.dart';
import 'package:eticon_nasa/screens/home/cubit/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
        if (state is HomeScreenLoadingState) {
          BlocProvider.of<HomeScreenCubit>(context).getRovers();
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is HomeScreenLoadedState) {
          return ListView.builder(
            itemCount: state.loadedRover.length,
            itemBuilder: (context, index) => GestureDetector(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailRoverPage(
                                model: state.loadedRover[index],
                              )));
                },
                child: RoverCard(
                  model: state.loadedRover[index],
                ),
              ),
            ),
          );
        }
        if (state is HomeScreenErrorState) {
          return Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(state.errorMsg, style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    BlocProvider.of<HomeScreenCubit>(context)
                        .emit(HomeScreenLoadingState());
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Center(child: Text("Refresh")),
                  ))
            ]),
          );
        }
        return Container();
      }),
    );
  }
}
