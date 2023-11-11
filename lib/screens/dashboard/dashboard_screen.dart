import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:students/components/error_indicator.dart';

import 'package:students/generated/assets.gen.dart';

import 'package:students/screens/dashboard/dashboard_state_notifier.dart';
import 'package:students/screens/dashboard/widgets/about_us_widget.dart';
import 'package:students/screens/dashboard/widgets/contact_info_widget.dart';
import 'package:students/screens/dashboard/widgets/our_service_widget.dart';
import 'package:students/screens/dashboard/widgets/spa_banner.dart';
import 'package:students/screens/home/home_screen.dart';

import 'package:students/utils/app_colors.dart';
import 'package:students/utils/utils.dart';

class DashBoardArg {
  final int? index;

  DashBoardArg({this.index});
}

class DashBoardScreen extends ConsumerStatefulWidget {
  final int? index;
  const DashBoardScreen({super.key, this.index});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashBoardScreenState();
}

class _DashBoardScreenState extends ConsumerState<DashBoardScreen>
    with TickerProviderStateMixin, Utils, WidgetsBindingObserver {
  static const List<DashboardItem> tabTypes = [
    DashboardItem.home,
    DashboardItem.hour,
    DashboardItem.profile,
  ];
  late TabController _tabController;
  late ScrollController _scrollController;
  var serviceKey = GlobalKey();
  var aboutKey = GlobalKey();
  var contactKey = GlobalKey();

  // 3 Pages in dashboard
  static const pages = [
    HomeScreen(),
    
  ];

  final List<GlobalKey<NavigatorState>> _tabNavKeyList =
      List.generate(tabTypes.length, (index) => index)
          .map((_) => GlobalKey<NavigatorState>())
          .toList();

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this, initialIndex: widget.index ?? 0);
    WidgetsBinding.instance.addObserver(this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SpaBannerWidget(scrollController: _scrollController, aboutKey: aboutKey, contactKey: contactKey, serviceKey: serviceKey,),
            OurServiceWidget(serviceKey: serviceKey,),
            AboutUsWidget(aboutKey: aboutKey,),
            ContactInfoWidget(contactKey: contactKey,),
          ],
        ),
      ),
    );
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: CupertinoTabView(
          navigatorKey: _tabNavKeyList[_tabController.index],
          builder: (context) {
            return pages[_tabController.index];
          },
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          const {3: ''},
          height: 45,
          backgroundColor: AppColors.bgNav,
          style: TabStyle.flip,
          curveSize: 10,
          items: [
            TabItem(
              icon: SvgPicture.asset(
                Assets.svg.icHome.path,
                color: Colors.red[200],
              ),
              title: 'Home',
            ),
            TabItem(
                icon: SvgPicture.asset(
                  Assets.svg.icHourGlass.path,
                  color: Colors.red[200],
                ),
                title: 'Time'),
            TabItem(
              icon: SvgPicture.asset(
                Assets.svg.icProfile.path,
                color: Colors.red[200],
              ),
              title: 'Profile',
            ),
          ],
          onTap: _onTapItem,
        ),
      ),
    );
  }

  // Function to handle thresh when tab to item in dashboard
  Future<void> _onTapItem(int index) async {
    final stateNotifier = ref.read(dashboardNotifierProvider.notifier);
    final currentIndex = ref.watch(
      dashboardNotifierProvider.select(
        (value) => value.indexTab,
      ),
    );

    // Check can pop when navigate tabview
    final currentState = _tabNavKeyList[currentIndex].currentState;
    final canPop = currentState?.canPop() ?? false;
    if (currentState != null && canPop) {
      currentState.popUntil((route) => route.isFirst);
    }

    // If index != currentIndex, will be update index for tabview
    if (index != currentIndex) {
      stateNotifier.updateViewAndDashboardIndex(
        tabController: _tabController,
        indexTab: index,
      );
    } else {
      stateNotifier.notifyRefresh(tabTypes[index]);
    }
  }
}
