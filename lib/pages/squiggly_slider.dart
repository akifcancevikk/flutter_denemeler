// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:squiggly_slider/slider.dart';

class SquigglySliderPage extends StatefulWidget {
  const SquigglySliderPage({super.key});

  @override
  State<SquigglySliderPage> createState() => _SquigglySliderPageState();
}

class _SquigglySliderPageState extends State<SquigglySliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Squiggly Slider Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AmplitudeSquiggleSlider(),
            WavelengthSquiggleSlider(),
            LineThumbSquiggleSlider(),
          ],
        ),
      ),
    );
  }
}

class AmplitudeSquiggleSlider extends StatefulWidget {
  const AmplitudeSquiggleSlider({super.key});

  @override
  State<AmplitudeSquiggleSlider> createState() =>
      _AmplitudeSquiggleSliderState();
}

class _AmplitudeSquiggleSliderState extends State<AmplitudeSquiggleSlider> {
  double _amplitude = 0.5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Amplitude'),
        SquigglySlider(
          value: _amplitude,
          min: 0,
          max: 20,
          squiggleAmplitude: _amplitude,
          squiggleWavelength: 10,
          squiggleSpeed: 0.2,
          label: 'Amplitude',
          onChanged: (double value) {
            setState(() {
              _amplitude = value;
            });
          },
        ),
      ],
    );
  }
}

class WavelengthSquiggleSlider extends StatefulWidget {
  const WavelengthSquiggleSlider({super.key});

  @override
  State<WavelengthSquiggleSlider> createState() =>
      _WavelengthSquiggleSliderState();
}

class _WavelengthSquiggleSliderState extends State<WavelengthSquiggleSlider> {
  double _wavelength = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Wavelength'),
        SquigglySlider(
          value: _wavelength,
          min: 0,
          max: 30,
          squiggleAmplitude: 10,
          squiggleWavelength: _wavelength,
          squiggleSpeed: 0.01,
          label: 'Wavelength',
          onChanged: (double value) {
            setState(() {
              _wavelength = value;
            });
          },
        ),
      ],
    );
  }
}

class LineThumbSquiggleSlider extends StatefulWidget {
  const LineThumbSquiggleSlider({super.key});

  @override
  State<LineThumbSquiggleSlider> createState() =>
      _LineThumbSquiggleSliderState();
}

class _LineThumbSquiggleSliderState extends State<LineThumbSquiggleSlider> {
  double _value = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Line thumb'),
        SquigglySlider(
          useLineThumb: true,
          value: _value,
          min: 0,
          max: 30,
          squiggleAmplitude: 7,
          squiggleWavelength: 10,
          squiggleSpeed: 0.1,
          label: 'Line thumb',
          onChanged: (double value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}