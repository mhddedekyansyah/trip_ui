part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                              image: AssetImage('assets/icons/icon_logo3.png')
                            )
                          ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text('Payment', style: GoogleFonts.montserrat(
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
          child: Text('Choose the card you want to use', style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                height: 1.5
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Color.fromRGBO(65, 73, 84, 1) : Color.fromRGBO(101, 109, 215, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: selected == index ? Border.all(color: Color.fromRGBO(225, 117, 81, 1), width:2,) : Border.all(color: Colors.transparent)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/icons/scan.png', color: Colors.white, width: 27, height: 38,),
                            Image.asset('assets/icons/visa.png', width: 47, height: 30,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('4726 1859 1857 ****', style: GoogleFonts.montserrat(color: Colors.white),),
                                Text('Bca', style: GoogleFonts.montserrat(color: Color.fromRGBO(117, 118, 134, 1), letterSpacing: 1),)
                              ],
                            ),
                            Image.asset('assets/icons/rounded.png', width: 47, height: 30,),
                          ],
                        )
                      ],
                    )
                        
                  ),
                );
              }, 
              separatorBuilder: (_, index) => const SizedBox(width: 15,), 
              itemCount: hotels.length
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset('assets/icons/add.png', width: 30, height: 30,),
                SizedBox(width: 10,),
                Text('Add Another Card', style: GoogleFonts.montserrat(
                  color: Colors.white
                ),)
              ],
            ),
          )
               ],
             ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 50, right: 50),
              height: 255,
              decoration: BoxDecoration(
                color: Color.fromRGBO(52, 51, 64, 1),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20)
                 )
              ),
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(31, 29, 43, 1),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Payment Summary', style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Family Trip', style: GoogleFonts.montserrat(color: const Color.fromRGBO(31, 29, 43, 1),)),
                      Text('IDR 2.500.000', style: GoogleFonts.montserrat(color: Colors.white)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hotel', style: GoogleFonts.montserrat(color: const Color.fromRGBO(31, 29, 43, 1), letterSpacing: 1.5)),
                      Text('IDR 500.000', style: GoogleFonts.montserrat(color: Colors.white, letterSpacing: 1.5),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Service Fee', style: GoogleFonts.montserrat(color: const Color.fromRGBO(31, 29, 43, 1), letterSpacing: 1.5)),
                      Text('IDR 50.000', style: GoogleFonts.montserrat(color: Colors.white, letterSpacing: 1.5)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total', style: GoogleFonts.montserrat(color: Colors.white, letterSpacing: 1.5),),
                      Text('IDR 550.000', style: GoogleFonts.montserrat(color: Color.fromRGBO(255, 117, 81, 1), letterSpacing: 1.5),),
                    ],
                  )
                ],
              ),
            )
          ),
           Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              elevation: 5,
              primary: const Color.fromRGBO(53, 163, 170, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Continue to Checkout', style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
                Image.asset('assets/icons/arrow.png', width: 20, height: 20,)
              ],
            ),
            ),
      )
          ],
        ),
      )
    );
  }
}