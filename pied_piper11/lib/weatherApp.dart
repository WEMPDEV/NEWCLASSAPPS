import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
class weatherApp extends StatefulWidget {
  const weatherApp({super.key});

  @override
  State<weatherApp> createState() => _weatherAppState();
}

class _weatherAppState extends State<weatherApp> {
  @override
  Widget build(BuildContext context) {
    // Register a weather services
    GetIt.I.registerLazySingleton(() => WeatherService());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: WeatherDataWidget(),
      ),
    );
  }
}


class WeatherService{
  Future<String> getWeather() async {
    // fetch weather dats from API(get_it)
      await Future.delayed(const Duration(seconds: 5));

    return 'Sunny';
  }
}

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherService weatherService = GetIt.I<WeatherService>();
    return FutureBuilder(
    future: weatherService.getWeather(),
        builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return const CircularProgressIndicator();
    }
    else if (snapshot.hasError ) {
    return Text('Error: ${snapshot.error}');
    }
    else{
    return Text('Weather ${snapshot.data ?? 'unknown'}', style: const TextStyle(color: Colors.black12,
    fontSize: 30,),);
    }
    },
    );
  }
}
