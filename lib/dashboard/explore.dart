import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  List<String> welcomeImages = [
    "assets/welcome0.png",
    "assets/welcome1.png",
    "assets/welcome2.png",
    "assets/welcome2.png",
    "assets/welcome1.png",
    "assets/welcome1.png"
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller = CardController(); //Use this to trigger swap.

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: new TinderSwapCard(
              swipeUp: true,
              swipeDown: true,
              orientation: AmassOrientation.BOTTOM,
              totalNum: welcomeImages.length,
              stackNum: 3,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width * 0.86 + 1,
              maxHeight: MediaQuery.of(context).size.width * 0.86 + 1,
              minWidth: MediaQuery.of(context).size.width * 0.86,
              minHeight: MediaQuery.of(context).size.width * 0.86,
              cardBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2015/05/25/14/29/tea-783352_960_720.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: Colors.black.withOpacity(0.34)),
                        ),
                      ),
                    ),
                    // event name
                    // description
                    // when (from and to)
                    // where
                    // max people
                    // people attending
                    // category

                    Positioned.fill(
                        child: Padding(
                      padding: const EdgeInsets.all(28),
                      child: Column(
                        children: [
                          Text(
                            'Event name',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey.shade50,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Long description long description long description long description long description',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.grey.shade300,
                              fontSize: 13,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Category',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                        color: Colors.grey.shade300,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Where',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                        color: Colors.grey.shade300,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'When',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                        color: Colors.grey.shade300,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'People',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rubik(
                                        color: Colors.grey.shade300,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        FeatherIcons.coffee,
                                        color: Colors.grey.shade100,
                                        size: 16,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        'Party',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade100,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Arsenalna metro, Kiyv',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade100,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'May 20, 8pm - 10pm',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade100,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '20',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade100,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            'Organizer',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.grey.shade300,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  FeatherIcons.user,
                                  size: 18,
                                  color: Colors.grey.shade50,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.4),
                                radius: 22,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'User name',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.grey.shade100,
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 1),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                            0.86 -
                                        110,
                                    child: Text(
                                      'biobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiobiov',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade100,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              cardController: controller,
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  //Card is LEFT swiping
                } else if (align.x > 0) {
                  //Card is RIGHT swiping
                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) {
                /// Get orientation & index of swiped card!
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.triggerLeft();
              },
              icon: Icon(
                FeatherIcons.x,
                color: Colors.red.shade600,
              ),
            ),
            SizedBox(width: 32),
            IconButton(
              onPressed: () {
                controller.triggerRight();
              },
              icon: Icon(
                FeatherIcons.heart,
                color: Colors.green.shade600,
              ),
            ),
          ],
        )
      ],
    );
  }
}
