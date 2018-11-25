
// TODO : enum tools/sdk/include/esp32/esp_sleep.h : 57

void print_wakeup_reason() {

  esp_sleep_wakeup_cause_t wakeup_reason;

  wakeup_reason = esp_sleep_get_wakeup_cause();

  switch (wakeup_reason)
  {
    case ESP_SLEEP_WAKEUP_UNDEFINED : Serial.println("In case of deep sleep, reset was not caused by exit from deep sleep"); break;
    case ESP_SLEEP_WAKEUP_ALL :       Serial.println("Not a wakeup cause, used to disable all wakeup sources with esp_sleep_disable_wakeup_source"); break;
    case ESP_SLEEP_WAKEUP_EXT0 :      Serial.println("Wakeup caused by external signal using RTC_IO"); break;
    case ESP_SLEEP_WAKEUP_EXT1 :      Serial.println("Wakeup caused by external signal using RTC_CNTL"); break;
    case ESP_SLEEP_WAKEUP_TIMER :     Serial.println("Wakeup caused by timer"); break;
    case ESP_SLEEP_WAKEUP_TOUCHPAD :  Serial.println("Wakeup caused by touchpad"); break;
    case ESP_SLEEP_WAKEUP_ULP :       Serial.println("Wakeup caused by ULP program"); break;
    case ESP_SLEEP_WAKEUP_GPIO :      Serial.println("Wakeup caused by GPIO (light sleep only)"); break;
    case ESP_SLEEP_WAKEUP_UART :      Serial.println("Wakeup caused by UART (light sleep only)"); break;
    default :                         Serial.println("Wakeup was not caused by deep sleep"); break;
  }
}
