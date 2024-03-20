import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:challenge_esusu/features/search/bloc/search_bloc.dart';
import 'package:challenge_esusu/helper/constants.dart';
import 'package:challenge_esusu/helper/location_list_tile.dart';
import 'package:get_it/get_it.dart';

Future<List<double>?> showSearchModal(BuildContext context) {
  return showModalBottomSheet<List<double>>(
    isScrollControlled: true,
    context: context,
    builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.7,
        maxChildSize: 0.9,
        expand: false,
        builder: (_, controller) {
          return BlocProvider(
            create: (_) => GetIt.I<SearchBloc>(),
            child: const SearchLocationScreen(),
          );
        }),
  );
}

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding),
          child: CircleAvatar(
            backgroundColor: secondaryColor10LightTheme,
            child: SvgPicture.asset(
              "assets/icons/location.svg",
              height: 16,
              width: 16,
            ),
          ),
        ),
        title: const Text(
          "Set Location",
          style: TextStyle(color: textColorLightTheme),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: secondaryColor10LightTheme,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close, color: Colors.black),
            ),
          ),
          const SizedBox(width: defaultPadding)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: TextFormField(
              key: const Key('searchCityField'),
              onChanged: (value) {
                BlocProvider.of<SearchBloc>(context)
                    .add(AutocompleteRequested(value));
              },
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: "Search your location",
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: SvgPicture.asset(
                    "assets/icons/location_pin.svg",
                  ),
                ),
              ),
            ),
          ),
          const Divider(
              height: 4, thickness: 4, color: secondaryColor5LightTheme),
          BlocListener<SearchBloc, SearchState>(
            listener: (context, state) {
              if (state is SearchSuccess) {
                Navigator.of(context).pop(state.coordenates);
              }
            },
            child: Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is AutocompleteSearchSuccess) {
                    return ListView.builder(
                      key: const Key('autocompleteList'),
                      itemCount: state.predictions.length,
                      itemBuilder: (context, index) {
                        final prediction = state.predictions[index];
                        return LocationListTile(
                          key: Key('locationListTile$index'),
                          press: () {
                            BlocProvider.of<SearchBloc>(context)
                                .add(GetCoordenates(prediction.placeId!));
                          },
                          location: prediction.description ?? '',
                        );
                      },
                    );
                  } else if (state is SearchLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is SearchFailed) {
                    return const Center(
                        child: Text("Failed to fetch location"));
                  }
                  return const SizedBox(); // Handle initial and other states
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
