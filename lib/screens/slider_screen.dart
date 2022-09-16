
import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _slideEnable = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: Apptheme.primary,
            value: _sliderValue, 
            onChanged: _slideEnable?
            (value){
              _sliderValue = value;
              setState(() { });
            }
            : null
            ),

            SwitchListTile.adaptive(
              value: _slideEnable, 
              onChanged: (value) => setState(() { _slideEnable = value ?? true;})

              ),

             const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: FadeInImage(
                  image: const NetworkImage('https://i.pinimg.com/originals/4a/24/cc/4a24cc3abb16ae768dfabac1c777fb64.png'),
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                  ),
                  
              ),
            )

            
        ],
      ),
    );
  }
}