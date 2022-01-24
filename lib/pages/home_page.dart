part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final List<CategoryModel> category = CategoryModel.generatedCategory();

int? selected;


  @override
  Widget build(BuildContext context) {
    return Stack(
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
                        color: Color.fromRGBO(53, 51, 64, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/icons/icon_logo.png')
                      )
                    ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Trip', style: GoogleFonts.montserrat(
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
          child: Text('Whom You are Planning To Travel With?', style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                height: 1.5
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(53, 51, 64, 1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: selected == index ? Color.fromRGBO(255, 117, 81, 1) : Color.fromRGBO(54, 51, 64, .1),
                        width: selected == index ? 2 : 0
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(category[index].title.toString(), style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              height: 1.5
                              ),
                            ),
                    Text(category[index].subTitle.toString(), style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                      ),
                      ),
                          ],
                        ),
                      selected == index ? Image.asset('assets/icons/checklist.png', width: 25, height: 25,) : SizedBox()
                      ],
                    ),
                  ),
                );
              }, 
              separatorBuilder: (_, index) => SizedBox(height: 10,), 
              itemCount: category.length
            )
          )
        ]
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HotelPage()));
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
                Text('Continue to Hotels', style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
                Image.asset('assets/icons/arrow.png', width: 20, height: 20,)
              ],
            ),
            ),
        ),
      )
      ]
    );
  }
}