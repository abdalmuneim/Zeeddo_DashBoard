import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:geocoding/geocoding.dart';

class StaffController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool serviceStatus = false;
  bool hasPermission = false;
  late LocationPermission permission;
  Position? position;
  String long = "", lat = "";

  final address = TextEditingController();
  final country = TextEditingController();
  final city = TextEditingController();
  final state = TextEditingController();
  final postalCode = TextEditingController();
  addNew() {
    // if (_formKey.currentState!.validate()) {
    _isLoading = true;
    update();
    Future.delayed(Duration(seconds: 4), () async {
      ToastManager.showSuccess('success Data');
      _isLoading = false;
      update();
    });
    // } else {
    // ToastManager.showSuccess('Check Data');
    // }
  }

  getPlaces() async {
    List<Placemark> location = await placemarkFromCoordinates(
        double.tryParse(lat) ?? 0, double.tryParse(long) ?? 0);
    print(location[0].toJson());
    address.text = '${location[0].name}' + ' Street ' + '${location[0].street}';
    country.text = location[0].country ?? "";
    city.text = location[0].subAdministrativeArea ?? "";
    state.text = location[0].administrativeArea ?? "";
    postalCode.text = location[0].postalCode ?? "";
  }

  late StreamSubscription<Position> positionStream;
  Future<Position?> determinePosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (await Permission.location.isPermanentlyDenied) {
        } else {
          final result = await Permission.location.request();

          serviceEnabled = result == PermissionStatus.granted;
        }
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return null;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        ToastManager.showError("please enable location");

        return null;
      }

      return await Geolocator.getCurrentPosition();
    } catch (error) {
      rethrow;
    }
  }

  getLocation() async {
    position = await determinePosition();
    if (position != null) {
      long = position!.longitude.toString();
      lat = position!.latitude.toString();
    }

    LocationSettings locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    update();
    Geolocator.getPositionStream(locationSettings: locationSettings).listen(
      (Position position) {
        long = position.longitude.toString();
        lat = position.latitude.toString();
        getPlaces();
        update();
      },
    );
  }

  @override
  void onInit() async {
    await getLocation();
    super.onInit();
  }

  @override
  void onReady() {
    getPlaces();
    super.onReady();
  }

  @override
  void onClose() {
    country.clear();
    city.clear();
    state.clear();
    postalCode.clear();
    super.onClose();
  }

  @override
  void dispose() {
    country.dispose();
    city.dispose();
    state.dispose();
    postalCode.dispose();
    super.dispose();
  }
}
