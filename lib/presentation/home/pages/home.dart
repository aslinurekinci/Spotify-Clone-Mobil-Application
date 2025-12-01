import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';

import '../../../common/widgets/appbar/app_bar.dart';
import '../../../core/configs/assets/app_vectors.dart';
import 'artists_tab.dart';
import 'news_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar yerinde kalıyor
      appBar: BasicAppbar(
        hideBack: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Column(
        children: [
          _homeTopCard(),
          _tabs(),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                NewsTab(),


                Center(child: Text("Videos İçeriği", style: TextStyle(color: Colors.white))),

                ArtistsTab(),
                Center(child: Text("Artists İçeriği", style: TextStyle(color: Colors.white))),
                Center(child: Text("Podcasts İçeriği", style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _homeTopCard(){
    return Center(
      child: SizedBox(
        height: 140,
        child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture .asset(
                    AppVectors.homeTopCard
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding:  const EdgeInsets.only(
                    right: 60,
                  ),
                  child: Image.asset(
                      AppImages.homeArtist
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }

  Widget _tabs(){
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      indicatorColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 0,
      ),
      tabs: const [
        Text(
          'News',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        Text(
          'Videos',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        Text(
          'Artists',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        Text(
          'Podcasts',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}