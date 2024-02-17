import 'package:discovery_app/core/constants.dart';
import 'package:discovery_app/utils/theme.dart';
import 'package:discovery_app/view/homePage/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageView extends ConsumerStatefulWidget {
  const HomePageView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageViewState();
}

class _HomePageViewState extends ConsumerState<HomePageView> {

  late HomePageViewModel _viewModel;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(homePageViewModel);
      _viewModel.fetchDiscoveryApi(_viewModel.pageNumber);
      _scrollController.addListener(() {
        if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
          _viewModel.incrementPageNumber();
          _viewModel.fetchDiscoveryApi(_viewModel.pageNumber);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _viewModel = ref.watch(homePageViewModel);
    final _themeProvider = ref.watch(themeProvider);
    return Scaffold(
      backgroundColor: _themeProvider.bgColor,
      appBar: AppBar(
        backgroundColor: _themeProvider.bgColor,
        title: Text("Discovery App", style: TextStyle(color: _themeProvider.textColor,),),
        actions: [
          IconButton(
            onPressed: () {
              _themeProvider.toggleTheme();
              HapticFeedback.heavyImpact();
            }, 
            icon: _themeProvider.darkTheme ? Icon(Icons.wb_sunny_rounded, color: Colors.amber[100],) : Icon(Icons.nightlight_round, color: Colors.blueGrey[800],)
          )
        ],
      ),
      body: SizedBox(
        height: size.height,        
        width: size.width,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _viewModel.items.length,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Divider(
                      color: _themeProvider.dividerColor,
                    ),
                  );
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(_viewModel.items[index].imageUrl ?? AppConstants.imageNotFoundLink)
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          _viewModel.items[index].title ?? "No title available",
                          style: TextStyle(color: _themeProvider.textColor, fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                        Text(
                          _viewModel.items[index].description ?? "No description available",
                          style: TextStyle(color: _themeProvider.textColor),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Center(
                child: _viewModel.loading ? const CircularProgressIndicator(color: Colors.black,) : Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}