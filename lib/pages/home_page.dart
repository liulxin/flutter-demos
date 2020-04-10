import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/dao/home_dao.dart';
import 'package:flutterapp/model/common_model.dart';
import 'package:flutterapp/model/grid_nav_model.dart';
import 'package:flutterapp/model/home_model.dart';
import 'package:flutterapp/model/sales_box_model.dart';
import 'package:flutterapp/pages/search_page.dart';
import 'package:flutterapp/widget/grid_nav.dart';
import 'package:flutterapp/widget/loading_container.dart';
import 'package:flutterapp/widget/local_nav.dart';
import 'package:flutterapp/widget/sales_box.dart';
import 'package:flutterapp/widget/search_bar.dart';
import 'package:flutterapp/widget/sub_nav.dart';
import 'package:flutterapp/widget/webview.dart';

const APPBAR_SCROLL_OFFSET = 100;
const SEARCH_BAR_DEFAULT_TEXT = '网红打卡地 景点 酒店 美食';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController(initialPage: 0);

  double _appBarAlpha = 0;
  List<CommonModel> localNavList = [];
  List<CommonModel> bannerList = [];
  List<CommonModel> subNavList = [];
  SalesBoxModel salesBox;
  GridNavModel gridNavList;
  bool _loading = true;

  void _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }

    setState(() {
      _appBarAlpha = alpha;
    });
    print(alpha);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _handleRefresh();
  }

  Future<Null> _handleRefresh() async {
    try {
      HomeModel result = await HomeDao.fetch();
      //      print(result is HomeModel);
      setState(() {
        localNavList = result.localNavList;
        subNavList = result.subNavList;
        gridNavList = result.gridNav;
        salesBox = result.salesBox;
        bannerList = result.bannerList;
        _loading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        _loading = false;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: LoadingContainer(
        isLoading: _loading,
        child: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: RefreshIndicator(
                onRefresh: _handleRefresh,
                child: NotificationListener(
                  // ignore: missing_return
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollUpdateNotification &&
                        scrollNotification.depth == 0) {
                      _onScroll(scrollNotification.metrics.pixels);
                    }
//                    return false;
                  },
                  child: _listView,
                ),
              ),
            ),
            _appBar
          ],
        ),
      ),
    );
  }

  Widget get _listView {
    return ListView(
      children: <Widget>[
        _banner,
        Padding(
          padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
          child: LocalNav(localNavList: localNavList),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 7, 5),
          child: GridNav(
            gridNavModel: gridNavList,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 7, 5),
          child: SubNav(
            subNavList: subNavList,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 7, 5),
          child: SalesBox(
            salesBox: salesBox,
          ),
        ),
      ],
    );
  }

  Widget get _banner {
    return Container(
      height: 160,
      child: Swiper(
        itemCount: bannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebView(
                    url: bannerList[index].url,
                    statusBarColor: bannerList[index].statusBarColor,
                    hideAppBar: bannerList[index].hideAppBar,
                    title: bannerList[index].title,
                    backForbid: false,
                  ),
                ),
              );
            },
            child: Image.network(
              bannerList[index].icon,
              fit: BoxFit.fill,
            ),
          );
        },
        pagination: SwiperPagination(),
      ),
    );
  }

  Widget get _appBar {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            //AppBar渐变遮罩背景
            colors: [Color(0x66000000), Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 80.0,
            decoration: BoxDecoration(
              color:
                  Color.fromARGB((_appBarAlpha * 255).toInt(), 255, 255, 255),
            ),
            child: SearchBar(
              searchBarType: _appBarAlpha > 0.2
                  ? SearchBarType.homeLight
                  : SearchBarType.home,
              inputBoxClick: _jumpToSearch,
              speakClick: _jumpToSepak,
              defaultText: SEARCH_BAR_DEFAULT_TEXT,
              leftButtonClick: () {
                print('leftButton');
              },
              rightButtonClick: () {
                print('rightButton');
              },
            ),
          ),
        ),
        // 阴影
        Container(
          height: _appBarAlpha > 0.2 ? 0.5 : 0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 0.5),
            ],
          ),
        )
      ],
    );
  }

  _jumpToSearch() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchPage(
          hint: SEARCH_BAR_DEFAULT_TEXT,
        ),
      ),
    );
  }

  _jumpToSepak() {
    print('toSepak');
  }
}
