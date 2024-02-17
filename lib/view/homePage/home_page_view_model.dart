// ignore_for_file: prefer_final_fields

import 'package:discovery_app/data/discoveryApi/discovery_api_repo_impl.dart';
import 'package:discovery_app/data/discoveryApi/models/discovery_api_model.dart';
import 'package:discovery_app/helper/base_screen_view.dart';
import 'package:discovery_app/helper/base_view_model.dart';
import 'package:discovery_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageViewModel = ChangeNotifierProvider((ref) => HomePageViewModel(ref: ref));

class HomePageViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  HomePageViewModel({required this.ref}) : super();

  final DiscoveryApiRepoImpl _discoveryApiRepoImpl = DiscoveryApiRepoImpl();

  /// DATA MEMBERS
  DiscoveryApiResponseModel _discoveryApiResponseModel = const DiscoveryApiResponseModel();
  List<DiscoveryItem> _items = [];
  int _pageNumber = 1;


  /// GETTERS
  DiscoveryApiResponseModel get discoveryApiResponseModel => _discoveryApiResponseModel;
  List<DiscoveryItem> get items => _items;
  int get pageNumber => _pageNumber;

  /// SETTERS
  void incrementPageNumber() {
    _pageNumber++;
    notifyListeners();
  }

  void resetAllData() {
    _pageNumber = 1;
    _items.clear();
    fetchDiscoveryApi(_pageNumber);
  }


  /// OTHER METHODS
  Future<void> fetchDiscoveryApi(int page) async {
    toggleLoading();
    await _discoveryApiRepoImpl.fetchDiscoveryData(page).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError("Error: ${l.message}"), 
        (r) {
          _discoveryApiResponseModel = r;
          _items.addAll(_discoveryApiResponseModel.data ?? []);
          notifyListeners();
          Logger.printSuccess(_items.toString());
        }
      );
    });
  }
}