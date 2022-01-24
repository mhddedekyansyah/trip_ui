part of 'pages.dart';

class HotelPage extends StatefulWidget {
  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  final List<HotelModel> hotels = HotelModel.generateHotel();

  int? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 29, 43, 1),
      body: SafeArea(
        child: Stack(
          children: [
             Column(
               children: [
                 Container(
            padding: EdgeInsets.only(left: 20,),
            height: 75,
            child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(53, 51, 64, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/icon_logo2.png')
                            )
                          ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text('Hotels', style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                          ),
                        )
                      ],
                    )
                  ]
            ),
          ),
          Padding(
          padding: const EdgeInsets.all(20),
          child: Text('Select the hotel you want to stay in', style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                height: 1.5
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(left: 20, right: 20),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    width: 315,
                    height: 225,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(53, 51, 64, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: selected == index ? Border.all(color: Color.fromRGBO(225, 117, 81, 1), width:2,) : Border.all(color: Colors.transparent)
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(hotels[index].imgUrl.toString()),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 164,
                                height: 41,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(53, 51, 64, .5),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)
                                  )
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('IDR ${hotels[index].price}k', style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(255, 117, 81, 1),
                                        letterSpacing: 1.5
                                      ),
                                    ),
                                    Text('/Night', style: GoogleFonts.montserrat(
                                       
                                        fontSize: 12,
                                        color: Colors.white,
                                        letterSpacing: 1.5
                                        )
                                      )
                                  ],
                                  )
                                ),
                
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10, top: 10),
                                child: selected == index ? Image.asset('assets/icons/checklist.png', width: 25, height: 25,) : SizedBox(),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(hotels[index].name.toString(), style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    letterSpacing: 1.5
                                  ),),
                                  Row(
                                    children: [
                                      Image.asset('assets/icons/location.png', width: 8, height: 11),
                                      SizedBox(width: 5,),
                                      Text(hotels[index].address.toString(), style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(117, 118, 134, 1),
                                        letterSpacing: 1.5
                                        )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                    (hotels[index].rate! > 4.5) ? Image(image:  AssetImage('assets/icons/star.png'), width: 20, height: 20,) : Image(image:  AssetImage('assets/icons/star_outline.png'), width: 20, height: 20,) 
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }, 
              separatorBuilder: (_, index) => const SizedBox(height: 15,), 
              itemCount: hotels.length
              ),
          ),
          SizedBox(height: 90,)
               ],
             ),
           Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                elevation: 5,
                primary: Color.fromRGBO(108, 94, 207, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Continue to Payment', style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),),
                  Image.asset('assets/icons/arrow.png', width: 20, height: 20,)
                ],
              ),
              ),
          ),
      )
          ],
        ),
      )
    );
  }
}