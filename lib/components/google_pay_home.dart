import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class GooglePayHome extends StatefulWidget {
  const GooglePayHome({super.key});

  @override
  State<GooglePayHome> createState() => _GooglePayHomeState();
}

class _GooglePayHomeState extends State<GooglePayHome> {
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.BARCODE,
      );
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      //_scanBarcodeResult = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset("images/first.jpg"),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 70,
                  width: 310,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Pay friends and merchants",
                        fillColor: Colors.grey,
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 330, top: 20),
                child: Stack(
                  children: [
                    CircleAvatar(
                      child: Text("L"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    /* Container(
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        //color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ), */
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade900,
                        minimumSize: Size(60, 60),
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.blue.shade50,
                      ),
                      onPressed: scanBarcodeNormal,
                    ),
                    const Text(
                      "Scan any",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "QR code",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.contacts,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "contacts",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: const Icon(
                        Icons.send_to_mobile_outlined,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Pay phone",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "number",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.account_balance,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Bank",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "transfer",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.alternate_email_sharp,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Pay URL ID",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "or number",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.camera_front_outlined,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Self",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "transfer",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: const Icon(
                        Icons.receipt_long_sharp,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "bills",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.charging_station_outlined,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const Text(
                      "Mobile",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "recharge",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 70),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(50),
                      dashPattern: [10, 5],
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Activate UPI Lite",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: (10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 20,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 25,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 6, left: 11),
                      child: Text(
                        'UPI ID: logeshloki@7010bank',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: (10),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Peoples",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "W",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Williams",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "E",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade400,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Elaksh",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.camera_front_outlined,
                          color: Colors.white,
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Self transfer",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Santhosh",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "R",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Ram",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "N",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Naren",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "G",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Gurusiva...",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "more",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Businesses",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.blue.shade600,
                          size: 20,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue.shade600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Image(
                            image: AssetImage('images/jio.png'),
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Jio Prepaid",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Image(
                            image: AssetImage('images/airtel.png'),
                            fit: BoxFit.cover,
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Airtel Prep...",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Image(
                            image: AssetImage('images/vi.png'),
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Vi Prepaid",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "more",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Bills & recharges",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Image(
                            image: AssetImage('images/eb.png'),
                            fit: BoxFit.cover,
                            height: 58,
                            width: 58,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 110.0),
                          child: Text(
                            "Water",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 43.0),
                      child: const Text(
                        "Bill bue in 2 days",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pay",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                        Icon(
                          Icons.currency_rupee_outlined,
                          color: Colors.blue,
                          size: 16,
                        ),
                        Text(
                          "661",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Image(
                            image: AssetImage('images/vi.png'),
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 110.0),
                          child: Text(
                            "Pannerselvam",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 43.0),
                      child: const Text(
                        "Validity expiring in 2 days",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pay",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Try adding these",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.charging_station_outlined,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Mobile",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "recharge",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.tv,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "DTH/Cable",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "TV",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    children: [
                      Container(
                        child: const Icon(
                          Icons.lightbulb_outline,
                          color: Colors.white,
                        ),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade900,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      const Text(
                        "Electricity",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.car_repair_outlined,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "FASTag",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "recharge",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Offers & rewards",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.emoji_events,
                          color: Colors.white,
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Rewards",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                      ),
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    const Text(
                      "Offers",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child: Icon(
                            Icons.phone_iphone,
                            color: Colors.white,
                          ),
                        ),
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      const Text(
                        "Referrals",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Manage your money",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.history,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "See transaction history",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "See transaction history",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Image.asset("images/last.jpg"),
              const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, left: 25),
                        child: Text(
                          "Invite friends to get \u{20B9}201",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 27),
                        child: Text(
                          "Invite friends to Google Pay and get \u{20B9} when your friend sends their first payment.",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 27),
                        child: Text(
                          "Copy your code",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Text(
                        "i1sh6v",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.content_copy_rounded,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 135, left: 27),
                child: Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Center(
                          child: Text(
                            "Invite",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
