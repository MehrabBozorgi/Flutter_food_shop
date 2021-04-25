import 'package:flutter/material.dart';
import 'package:flutter_app_online_menu/widget/MainDrawer.dart';

class FilterScreen extends StatefulWidget {
  final Function saveFilter;
  final Map<String, bool> currentFilters;

  FilterScreen(this.currentFilters, this.saveFilter);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;
  bool _isVegetarian = false;

  @override
  void initState() {
    super.initState();
    _isGlutenFree = widget.currentFilters['gluten'];
    _isLactoseFree = widget.currentFilters['lactose'];
    _isVegan = widget.currentFilters['vegan'];
    _isVegetarian = widget.currentFilters['vegetarian'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _isGlutenFree,
                'lactose': _isLactoseFree,
                'vegan': _isVegan,
                'vegetarian': _isVegetarian,
              };

              widget.saveFilter(selectedFilters);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                'Your meal selection',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: Text(
                    'Gluten Free',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  value: _isGlutenFree,
                  subtitle: Text('Only include Gluten Free meals'),
                  onChanged: (newValue) {
                    setState(() {
                      _isGlutenFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text(
                    'LactoseFree',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  value: _isLactoseFree,
                  subtitle: Text('Only include Lactose-Free meals'),
                  onChanged: (newValue) {
                    setState(() {
                      _isLactoseFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text(
                    'Vegan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  value: _isVegan,
                  subtitle: Text('Only include Vegan meals'),
                  onChanged: (newValue) {
                    setState(() {
                      _isVegan = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text(
                    'Vegetarian',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  value: _isVegetarian,
                  subtitle: Text('Only include Vegetarian meals'),
                  onChanged: (newValue) {
                    setState(() {
                      _isVegetarian = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
