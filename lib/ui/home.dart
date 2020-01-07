import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          )),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor.withOpacity(0.16),
        child: Column(
          children: <Widget>[_homePageHeader(), _homePageHero()],
        ),
      )
    ]));
  }

  _homePageHeader() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Kenya',
                  style: GoogleFonts.montserrat(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 10.0,
                            offset: new Offset(0.0, 0.75))
                      ]),
                  child: Center(child: Icon(Icons.search, color: Colors.white)),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        )
      ],
    ));
  }

  _homePageHero() {
    return Hero(
      tag: 'Homepage Hero',
      child: Container(
        color: Colors.grey[300],
        height: MediaQuery.of(context).size.height * 0.4,

        // constraints: BoxConstraints(
        //     minHeight: MediaQuery.of(context).size.height - 150.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: CarouselSlider(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                items: List.generate(10, (i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return new Stack(
                        alignment: Alignment.bottomCenter,
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          Positioned(
                              bottom: -75.0,
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 125.0,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    color: Colors.purple.withOpacity(0.75)),
                              ))
                        ],
                      );
                    },
                  );
                }),
              )),
              SizedBox(
                height: 10.0,
              )
            ]),
      ),
    );
  }
}
