import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uii_act11_gonzalez0490/util/my_button.dart';
import 'package:uii_act11_gonzalez0490/util/my_list_tile.dart';
import 'package:uii_act11_gonzalez0490/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on_outlined,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Mis",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Tarjetas",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 1500,
                      cardNumber: 8364,
                      expiryMonth: 4,
                      expiryYear: 28,
                      color: Colors.blue[400],
                    ),
                    MyCard(
                      balance: 7362,
                      cardNumber: 8374,
                      expiryMonth: 2,
                      expiryYear: 28,
                      color: Color(0xffc27c57),
                    ),
                    MyCard(
                      balance: 3253,
                      cardNumber: 9134,
                      expiryMonth: 7,
                      expiryYear: 28,
                      color: Color(0xff5763c2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconImagePath: "lib/icons/money-transfer.png",
                      buttontext: "Enviar",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/atm-card.png",
                      buttontext: "Pagar",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/bill.png",
                      buttontext: "Recibos",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyListTile(
                      iconImagePath: "lib/icons/rising.png",
                      titleName: "Estadisticas",
                      titleSubTitle: "Pagos e impuestos",
                    ),
                    MyListTile(
                      iconImagePath: "lib/icons/money.png",
                      titleName: "Transacciones",
                      titleSubTitle: "Historial de transacciones",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
