import 'dart:ui';
import 'package:flutter/material.dart';
import 'additional_info_item.dart';
import 'hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "300k",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Rain",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // weather forecast cards
            const Text(
              "Weather Forecast",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  HourlyForecastItem(
                      time: "00:00", temperature: "301.22", icon: Icons.cloud),
                  HourlyForecastItem(
                      time: "03:00", temperature: "300.52", icon: Icons.sunny),
                  HourlyForecastItem(
                      time: "06:00", temperature: "300.52", icon: Icons.cloud),
                  HourlyForecastItem(
                      time: "09:00", temperature: "300.22", icon: Icons.sunny),
                  HourlyForecastItem(
                      time: "12:00", temperature: "300.12", icon: Icons.cloud),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // additional information
            const Text(
              "Additional Information",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                AdditionalInfoItem(
                  icon: Icons.water_drop,
                  label: "Humidity",
                  value: "94",
                ),
                AdditionalInfoItem(
                  icon: Icons.air,
                  label: "Wind Speed",
                  value: "7.5",
                ),
                AdditionalInfoItem(
                  icon: Icons.beach_access,
                  label: "Pressure",
                  value: "1000",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
