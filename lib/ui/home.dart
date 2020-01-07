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
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        child: ListView(shrinkWrap: true, children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _homePageHeader(),
              _homePageHero(),
              _homePageDetails()
            ],
          )
        ]),
      )
    ]));
  }

  _homePageHeader() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 15.0,
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
          height: 0.0,
        )
      ],
    ));
  }

  _homePageHero() {
    return Hero(
      tag: 'Homepage Hero',
      child: Container(
        // color: Colors.grey[300],
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: CarouselSlider(
                viewportFraction: 0.9,
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
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/pic1.jpg'),
                                    fit: BoxFit.cover,
                                    repeat: ImageRepeat.noRepeat,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.35),
                                        BlendMode.darken))),
                          ),
                          Positioned(
                              bottom: -45.0,
                              child: Container(
                                width: MediaQuery.of(context).size.width - 90.0,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                height: 110.0,
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 5.0,
                                          offset: new Offset(0.0, 0.75))
                                    ],
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Text(
                                      'Awesome Places',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.star,
                                                size: 15.0,
                                                color: Theme.of(context)
                                                    .accentColor),
                                            Icon(Icons.star,
                                                size: 15.0,
                                                color: Theme.of(context)
                                                    .accentColor),
                                            Icon(Icons.star,
                                                size: 15.0,
                                                color: Theme.of(context)
                                                    .accentColor),
                                            Icon(Icons.star,
                                                size: 15.0,
                                                color: Theme.of(context)
                                                    .accentColor),
                                            Icon(Icons.star_border,
                                                size: 15.0,
                                                color: Theme.of(context)
                                                    .accentColor),
                                            SizedBox(
                                              width: 2.5,
                                            ),
                                            Text(
                                              '3.5',
                                              style: GoogleFonts.montserrat(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.comment,
                                              size: 15.0,
                                              color:
                                                  Theme.of(context).accentColor,
                                            ),
                                            SizedBox(
                                              width: 2.5,
                                            ),
                                            Text(
                                              '1250',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(children: <Widget>[
                                          Icon(
                                            Icons.refresh,
                                            size: 15.0,
                                            color:
                                                Theme.of(context).accentColor,
                                          ),
                                          SizedBox(
                                            width: 1.5,
                                          ),
                                          Text(
                                            'Normal',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              size: 15.0,
                                              color:
                                                  Theme.of(context).accentColor,
                                            ),
                                            SizedBox(
                                              width: 1.5,
                                            ),
                                            Text(
                                              '1.7km',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.watch_later,
                                              size: 15.0,
                                              color:
                                                  Theme.of(context).accentColor,
                                            ),
                                            SizedBox(
                                              width: 1.5,
                                            ),
                                            Text(
                                              '32 min',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      );
                    },
                  );
                }),
              )),
              SizedBox(
                height: 15.0,
              )
            ]),
      ),
    );
  }

  _homePageDetails() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Popular',
                    style: GoogleFonts.montserrat(
                        fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.stop,
                    size: 10.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Food Pairing',
                    style: GoogleFonts.montserrat(
                        fontSize: 15.0, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 125.0,
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).accentColor.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Container(
                          width: 125.0 / 2.0,
                          height: 125.0 / 2.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.75),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: new Offset(0, 0.75),
                                    blurRadius: 10.0)
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 110.0,
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      offset: new Offset(-0.25, 0.75),
                                      blurRadius: 5.0)
                                ]),
                          ),
                          Container(
                            height: 110.0,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7.5, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Lorem ipsum',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Icon(
                                        Icons.refresh,
                                        size: 15.0,
                                        color: Theme.of(context).accentColor,
                                      ),
                                      SizedBox(
                                        width: 1.5,
                                      ),
                                      Text(
                                        'Normal',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ]),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: 15.0,
                                          color: Theme.of(context).accentColor,
                                        ),
                                        SizedBox(
                                          width: 1.5,
                                        ),
                                        Text(
                                          '1.7km',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.watch_later,
                                          size: 15.0,
                                          color: Theme.of(context).accentColor,
                                        ),
                                        SizedBox(
                                          width: 1.5,
                                        ),
                                        Text(
                                          '32 min',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 125.0,
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).accentColor.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Container(
                          width: 125.0 / 2.0,
                          height: 125.0 / 2.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.75),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: new Offset(0, 0.75),
                                    blurRadius: 10.0)
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 110.0,
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      offset: new Offset(-0.25, 0.75),
                                      blurRadius: 5.0)
                                ]),
                          ),
                          Container(
                            height: 110.0,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7.5, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Lorem ipsum',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Icon(
                                        Icons.refresh,
                                        size: 15.0,
                                        color: Theme.of(context).accentColor,
                                      ),
                                      SizedBox(
                                        width: 1.5,
                                      ),
                                      Text(
                                        'Normal',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ]),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: 15.0,
                                          color: Theme.of(context).accentColor,
                                        ),
                                        SizedBox(
                                          width: 1.5,
                                        ),
                                        Text(
                                          '1.7km',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.watch_later,
                                          size: 15.0,
                                          color: Theme.of(context).accentColor,
                                        ),
                                        SizedBox(
                                          width: 1.5,
                                        ),
                                        Text(
                                          '32 min',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(height: 15.0),
            ],
          ),
        )
      ],
    );
  }
}
