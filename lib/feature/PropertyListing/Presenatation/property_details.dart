import 'package:data_float/core/helper/priceformatter.dart';
import 'package:data_float/core/widgets/IconWithText.dart';
import 'package:data_float/core/widgets/commontext.dart';
import 'package:data_float/core/widgets/iconWidget.dart';
import 'package:data_float/core/widgets/tabs.dart';
import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PropertyDetails extends StatefulWidget {
  final PropertyListingEntity entity;
  const PropertyDetails({super.key, required this.entity});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails>
    with SingleTickerProviderStateMixin {
  int currentindex = 0;
  late TabController _tabc;
  @override
  void initState() {
    super.initState();
    _tabc = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Positioned(
          //   top: 5,
          //   bottom: 500,
          //   left: 5,
          //   right: 5,
          //   child: Image.network(
          //     widget.entity.pictures[0],
          //     fit: BoxFit.contain,
          //   ),
          // ),
          Positioned(
            top: 5,
            bottom: 500,
            left: 5,
            right: 5,
            child: CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentindex = index;
                  });
                },
              ),
              items: widget.entity.pictures.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(image, fit: BoxFit.contain),
                    );
                  },
                );
              }).toList(),
            ),
          ),

          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: CommonText(
                    text: "MLS# ${widget.entity.mlsNumber}",
                    Tstyle: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Iconwidget(ontap: () {}, icon: Icons.share),
              ],
            ),
          ),
          Positioned(
            left: 333,
            bottom: 550,
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: CommonText(
                text: '${currentindex + 1}/${widget.entity.pictures.length}',
                Tstyle: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Positioned(
            top: 350,
            left: 30,
            bottom: 15,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${Priceformatter(widget.entity.price)}",
                      style: GoogleFonts.inter(
                        color: Colors.black,

                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      widget.entity.propertyType.toString(),
                      style: GoogleFonts.inter(
                        color: Colors.grey,

                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 20,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blueAccent.withOpacity(0.3),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Coming soon",
                        style: GoogleFonts.inter(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                CommonText(
                  text: widget.entity.address,
                  Tstyle: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 110,
            bottom: 80,
            left: 25,
            child: Row(
              children: [
                Iconwithtext(txt: "view on Browser", icon: Icons.language),
                SizedBox(width: 100),
                Iconwithtext(txt: "view on Map", icon: Icons.location_on),
              ],
            ),
          ),

          Positioned(
            top: 170,
            bottom: 50,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Iconwithtext(
                  txt: widget.entity.beds.toString(),
                  icon: Icons.bed_rounded,
                ),
                SizedBox(width: 20),
                Iconwithtext(
                  txt: widget.entity.baths.toString(),
                  icon: Icons.bathtub_outlined,
                ),
                SizedBox(width: 20),
                Iconwithtext(
                  txt: "${widget.entity.sqft.toStringAsFixed(1)} Sqft",
                  icon: Icons.article_outlined,
                ),
              ],
            ),
          ),

          Positioned(
            top: 300,
            left: 25,
            right: 25,
            bottom: 100,
            child: Divider(thickness: 2, color: Colors.grey.shade300),
          ),
          Positioned(
            top: 550,
            left: 0,
            right: 0,
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: _tabc,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                CommonText(
                  text: "Details",
                  Tstyle: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                CommonText(
                  text: "Listing Agents",
                  Tstyle: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 600,
            left: 20,
            right: 20,
            bottom: 10,
            child: TabBarView(
              controller: _tabc,
              children: [
                Center(
                  child: Column(
                    children: [
                      TabcontentText(
                        txt1: "MLS#",
                        txt2: widget.entity.mlsNumber,
                      ),
                      Divider(),
                      TabcontentText(
                        txt1: "Property type",
                        txt2: widget.entity.propertyType,
                      ),
                      Divider(),
                      TabcontentText(
                        txt1: "Status",
                        txt2: widget.entity.status,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      TabcontentText(
                        txt1: "Name",
                        txt2: widget.entity.agentName,
                      ),
                      Divider(),
                      TabcontentText(
                        txt1: "office",
                        txt2: widget.entity.agentOffice,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
