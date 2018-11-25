
void setRGBLedOff() {
  setRGBLedColor(0, 0, 0);
}

void setRGBLedColorRed() {
  setRGBLedColor(255, 0, 0);
}

void setRGBLedColorGreen() {
  setRGBLedColor(0, 255, 0);
}

void setRGBLedColorBlue() {
  setRGBLedColor(0, 0, 255);
}

void setRGBLedColorYellow() {
  setRGBLedColor(255, 255, 0);
}

void setRGBLedColorPurple() {
  setRGBLedColor(255, 0, 255);
}

void setRGBLedColorWhite() {
  setRGBLedColor(255, 255, 255);
}

void setRGBLedColor(uint8_t red, uint8_t green, uint8_t blue) {
  // on divise par 2 pour ne pas avoir trop de luminosité, ça pête les yeux !
  ledcWrite(LEDRGB_RED_CHANNEL,   256 - (red   /10));
  ledcWrite(LEDRGB_GREEN_CHANNEL, 256 - (green /10));
  ledcWrite(LEDRGB_BLUE_CHANNEL,  256 - (blue  /10));
}
