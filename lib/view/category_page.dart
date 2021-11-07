import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<String> _categoryList = [
    'Electronice',
    'Shose',
  ];
  List<String> _electroniceList = [
    'Phoone',
    'Laptop',
    'Drone',
  ];
  List<String> _shoeseList = [
    'Adidas',
    'Nike',
  ];
  int _curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                child: ListView.builder(
                  itemCount: _categoryList.length,
                  itemBuilder: (context, index) {
                    var _data = _categoryList[index];
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _curentIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          _data,
                          style: TextStyle(fontSize: 10.0),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        height: 150.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: _curentIndex == index ? Border.all() : null,
                          color: _curentIndex == index
                              ? Colors.white
                              : Colors.yellow,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: ListView.builder(
                  itemCount: _curentIndex == 0
                      ? _electroniceList.length
                      : _curentIndex == 1
                          ? _shoeseList.length
                          : _electroniceList.length,
                  itemBuilder: (context, index) {
                    var _data = _curentIndex == 0
                        ? _electroniceList[index]
                        : _curentIndex == 1
                            ? _shoeseList[index]
                            : _electroniceList[index];
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_data),
                            Icon(Icons.arrow_forward_ios, size: 20.0),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.only(
                        left: 16.0,
                        bottom: 16.0,
                      ),
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue[50],
                      ),
                    );
                  },
                ),
                height: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
