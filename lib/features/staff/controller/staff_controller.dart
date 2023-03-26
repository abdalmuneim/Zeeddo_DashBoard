import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:geocoding/geocoding.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

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

  final List<String> _roles = ['role 1', 'role 2'];
  List<String> get roles => _roles;
  String _selectedRole = '';
  String get selectedRole => _selectedRole;

  final List<String> _categories = [
    'Category 1',
    'Category 2',
  ];
  List<String> get categories => _categories;
  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;

  final List<String> _subCategories = [
    'subCategories 1',
    'subCategories 2',
  ];
  List<String> get subCategories => _subCategories;
  String _selectedSubCategory = '';
  String get selectedSubCategory => _selectedSubCategory;

  selectRole(String? value) {
    _selectedRole = value!;
    update();
  }

  selectCategory(String? value) {
    _selectedCategory = value!;
    update();
  }

  selectSubCategory(String? value) {
    _selectedSubCategory = value!;
    update();
  }

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

  getLocation() async {
    position = await Utils.determinePosition();
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
