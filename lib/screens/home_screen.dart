import 'package:flutter/material.dart';
import '../widgets/weather_card.dart';
import '../widgets/forecast_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  "Kochi",
                  style: TextStyle(
                    fontSize: size.width * 0.08,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Today, 28 Dec",
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 30),

                // Current Weather Card
                const WeatherCard(),

                const SizedBox(height: 30),

                // Forecast Title
                const Text(
                  "Next Forecast",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 16),

                // Forecast List
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ForecastTile(time: "10 AM", temp: "30°", icon: Icons.sunny),
                      ForecastTile(time: "1 PM", temp: "32°", icon: Icons.sunny),
                      ForecastTile(time: "4 PM", temp: "29°", icon: Icons.cloud),
                      ForecastTile(time: "7 PM", temp: "27°", icon: Icons.cloud),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
