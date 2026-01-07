import 'dart:developer';

import 'package:data_float/core/helper/priceformatter.dart';
import 'package:data_float/core/widgets/IconWithText.dart';
import 'package:data_float/core/widgets/commonTextfield.dart';
import 'package:data_float/core/widgets/commontext.dart';
import 'package:data_float/feature/PropertyListing/Presenatation/bloc/proplisting/proplisting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shimmer/shimmer.dart';

class listingScreen extends StatefulWidget {
  const listingScreen({super.key});

  @override
  State<listingScreen> createState() => _listingScreenState();
}

class _listingScreenState extends State<listingScreen> {
  @override
  @override
  void initState() {
    context.read<ProplistingBloc>().add(ProplistingEvent.getpropertyList());
    super.initState();
  }

  TextEditingController searchController = TextEditingController();
  bool isSearching = false;
  Widget build(BuildContext context) {
    return BlocConsumer<ProplistingBloc, ProplistingState>(
      listener: (context, state) {
        print("state.wrktype :${state.wrktype}");
        if (isSearching) {
          final count = state.FiterList.length;
          Fluttertoast.showToast(
            msg: '${count.toString().padLeft(2, '0')} listings found',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            backgroundColor: Colors.black87,
            textColor: Colors.white,
            fontSize: 14,
          );
        }
      },
      builder: (context, state) {
        final list = state.FiterList;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF1E88E5),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {},
            ),
            title: isSearching
                ? searchTextfield(
                    onchanged: (value) {
                      context.read<ProplistingBloc>().add(
                        ProplistingEvent.propertyListingfilterevent(
                          searchController.text,
                        ),
                      );
                    },
                    controller: searchController,
                    Iconpressed: () {
                      if (isSearching) {
                        context.read<ProplistingBloc>().add(
                          ProplistingEvent.propertyListingfilterevent(''),
                        );
                        setState(() {
                          isSearching = false;
                          searchController.clear();
                        });
                      } else {
                        Navigator.pop(context);
                      }
                    },
                  )
                : Text("Listings", style: TextStyle(color: Colors.white)),
            actions: [
              if (!isSearching)
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  },
                ),
            ],
          ),

          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];

              return Card(
                child: ListTile(
                  onTap: () {
                    context.push('/details', extra: item);
                  },
                  subtitle: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          item.pictures.isNotEmpty
                              ? item.pictures.first
                              : 'https://via.placeholder.com/150',
                          width: 130,
                          height: 130,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/noimage.png',
                              width: 130,
                              height: 130,
                              fit: BoxFit.cover,
                            );
                          },
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CommonText(
                                    text: "${Priceformatter(item.price)}",
                                    Tstyle: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(
                                        255,
                                        199,
                                        223,
                                        237,
                                      ).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: CommonTextwithAlign(
                                        txtalign: TextAlign.center,
                                        text: item.status.toString(),
                                        Tstyle: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),

                              CommonText(
                                text: item.address.toString(),
                                Tstyle: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(
                                    255,
                                    129,
                                    127,
                                    127,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Iconwithtext(
                                    txt: item.beds.toString(),
                                    icon: Icons.bed_rounded,
                                  ),
                                  Iconwithtext(
                                    txt: item.baths.toString(),
                                    icon: Icons.bathtub_outlined,
                                  ),
                                  Iconwithtext(
                                    txt: "${item.sqft.toStringAsFixed(1)} Sqft",
                                    icon: Icons.article_outlined,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
