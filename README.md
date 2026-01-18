# Metronome

Cross-platform metronome with precise threading and GUI built with Python and Tkinter. Features adjustable BPM, time signatures, and tap tempo estimation.

![image](https://github.com/user-attachments/assets/8fcbc6ec-4807-4972-9dd7-f425226c965f)

# Motivation
Being a musician, I've been searching for a metronome that goes beyond what online platforms offer and perfectly fits my needs. I want to share this journey with other musicians and discover the perfect tool together. If you have any suggestions, please share!

# Usage
* Space: Play/Pause
* Left/Right: Tempo Down/Up 5
* Up/Down: Tempo Down/Up 1
* T: Tap Estimate
* M: Change Time Signature Mode

## Quick Start

```
git clone https://github.com/FeHa1/Metronome.git
cd Metronome
pip install -r requirements.txt
cd src
python metronome.py
```

## Structure

```
Metronome/
├── src/
│   ├── metronome.py       # Main application
│   ├── strong_beat.wav    # Downbeat sound
│   └── weak_beat.wav      # Regular beat sound
├── requirements.txt       # Dependencies
├── make_bin.sh           # Binary build script (PyInstaller)
└── make_dmg.sh           # macOS installer script
```

## Features

- **BPM Range**: 30-230 beats per minute
- **Visual Feedback**: Beat counter displays current position in measure
- **Tempo Categories**: Automatic marking display (Largo, Adagio, Andante, etc.)
- **Keyboard Shortcuts**: Complete keyboard control for hands-free operation
- **Custom Builds**: Scripts included for creating standalone executables
