#include <Arduino.h>
#include <FunctionalInterrupt.h>
#include <driver/dac.h>


// TODO : détecter si câble USB branché
#define DEV

class Button
{
  public:
    Button(uint8_t reqPin) : _pin(reqPin) {
      _pressed = false;
      _nbPressed = 0;
      pinMode(_pin, INPUT_PULLUP);
      attachInterrupt(_pin, std::bind(&Button::isr, this), FALLING);
    };
    ~Button() {
      detachInterrupt(_pin);
    }

    void IRAM_ATTR isr() {
      _pressed = true;
      _nbPressed++;
    }

    bool isPressed() {
      bool pressed = _pressed;
      _pressed = false;
      return pressed;
    }

    uint8_t nbPressed() {
      return _nbPressed;
    }

    void setCallback(void (*callback)(void) ) {
      _callback = callback;
    }

  private:
    const uint8_t _pin;
    volatile bool _pressed;
    volatile uint8_t _nbPressed;
    void (*_callback)(void);
};



#define VOLTAGE_BASE  3.64 // tension de base de la batterie
#define VOLTAGE_INTERVAL 30000 // mesure toutes les X secondes (X x 1000 ms)

static const uint8_t BTN_SLEEP  = 13;
static const uint8_t BTN_RED    = 32;
static const uint8_t BTN_GREEN  = 33;
static const uint8_t BTN_YELLOW = 25;
static const uint8_t BTN_BLUE   = 26;
static const uint8_t BTN_ROTARY = 0;

static const uint8_t LEDRGB_RED_PIN   = A17;
static const uint8_t LEDRGB_GREEN_PIN = A16;
static const uint8_t LEDRGB_BLUE_PIN  = A15;
static const uint8_t LEDRGB_RED_CHANNEL   = 1;
static const uint8_t LEDRGB_GREEN_CHANNEL = 2;
static const uint8_t LEDRGB_BLUE_CHANNEL  = 3;

static const uint8_t SECOUSSE = 34;


// variables d'état
unsigned long voltageLastMeasureMillis = 0;
int btnSleep;
int btnRed;
int btnGreen;
int btnYellow;
int btnBlue;
int btnRotary;


// variables valables sur 1 itération (de loop())
unsigned long currentMillis;

// objets
// boutons de contrôle
Button buttonSleep(BTN_SLEEP);
Button buttonRed(BTN_RED);
Button buttonGreen(BTN_GREEN);
Button buttonYellow(BTN_YELLOW);
Button buttonBlue(BTN_BLUE);
Button buttonRotary(BTN_ROTARY);

volatile int secousseDecalage = 0;
void secousse() {
  for (int i = 0; i < secousseDecalage; i++) {
    Serial.print(F("   "));
  }
  Serial.println(F("¯|_"));
  secousseDecalage = ( secousseDecalage + 1 ) % 10;
}

void setup() {
  Serial.begin(115200);

#ifdef DEV
  delay(1000);
#endif

  dac_output_disable(DAC_CHANNEL_1);
  dac_output_disable(DAC_CHANNEL_2);
  dac_i2s_disable();

  print_wakeup_reason();

  // mesure de la tension (_VBAT = 35)
  pinMode(_VBAT, INPUT);

  // led RGB (TODO : led que si cable usb branché = mode recharge)
  ledcAttachPin(LEDRGB_RED_PIN,   LEDRGB_RED_CHANNEL);
  ledcAttachPin(LEDRGB_GREEN_PIN, LEDRGB_GREEN_CHANNEL);
  ledcAttachPin(LEDRGB_BLUE_PIN,  LEDRGB_BLUE_CHANNEL);
  ledcSetup(LEDRGB_RED_CHANNEL, 12000, 8); // 12 kHz PWM, 8-bit resolution
  ledcSetup(LEDRGB_GREEN_CHANNEL, 12000, 8);
  ledcSetup(LEDRGB_BLUE_CHANNEL, 12000, 8);
  setRGBLedOff();

  // retour de sleep mode      SECOUSSE
//  pinMode(SECOUSSE, INPUT);
//  attachInterrupt(SECOUSSE, secousse, FALLING);

  // bouton rouge
  //  esp_sleep_enable_ext0_wakeup(GPIO_NUM_32, 0);

  // secousse
  esp_sleep_enable_ext0_wakeup(GPIO_NUM_34, 0);

  // bouton rotatif pressé
  //  esp_sleep_enable_ext0_wakeup(GPIO_NUM_0, 0); //1 = High, 0 = Low
}

void loop() {

  currentMillis = millis();

  // --------------------------------------------------------------------------------------------
  //                                           BOUTONS
  // --------------------------------------------------------------------------------------------
  if ( buttonRed.isPressed() ) {
    Serial.print(F("Bouton ROUGE pressé ("));
    Serial.print(buttonRed.nbPressed());
    Serial.println(F(" fois)"));
    setRGBLedColorRed();
  }
  if ( buttonGreen.isPressed() ) {
    Serial.print(F("Bouton VERT pressé ("));
    Serial.print(buttonGreen.nbPressed());
    Serial.println(F(" fois)"));
    setRGBLedColorGreen();
  }
  if ( buttonYellow.isPressed() ) {
    Serial.print(F("Bouton JAUNE pressé ("));
    Serial.print(buttonYellow.nbPressed());
    Serial.println(F(" fois)"));
    setRGBLedColorYellow();
  }
  if ( buttonBlue.isPressed() ) {
    Serial.print(F("Bouton BLEU pressé ("));
    Serial.print(buttonBlue.nbPressed());
    Serial.println(F(" fois)"));
    setRGBLedColorBlue();
  }
  if ( buttonRotary.isPressed() ) {
    Serial.print(F("Bouton ROTATIF pressé ("));
    Serial.print(buttonRotary.nbPressed());
    Serial.println(F(" fois)"));
    setRGBLedColorPurple();
  }
  // --------------------------------------------------------------------------------------------

  // --------------------------------------------------------------------------------------------
  //                                       DEEP SLEEP MANUEL
  // --------------------------------------------------------------------------------------------
  if ( buttonSleep.isPressed() ) {
    Serial.println(F("Bouton BLANC pressé"));
    setRGBLedOff();
//    detachInterrupt(SECOUSSE);

    Serial.println("Going to sleep in 3 seconds...");
    delay(1000);
    Serial.println("Going to sleep in 2 seconds...");
    delay(1000);
    Serial.println("Going to sleep in 1 second...");
    delay(1000);
    Serial.println("Going to sleep NOW !");
    esp_deep_sleep_start();
    Serial.println("This will never be printed");
  }
  // --------------------------------------------------------------------------------------------

  // --------------------------------------------------------------------------------------------
  //                                           VOLTAGE
  // --------------------------------------------------------------------------------------------
  // TODO : remplacer par un timer (callback) ou par une tache FreeRTOS
  // gérer la réinitialisation de millis() au bout de 50j
  if ( currentMillis > ( voltageLastMeasureMillis + VOLTAGE_INTERVAL) || currentMillis < voltageLastMeasureMillis ) {
    voltageLastMeasureMillis = currentMillis;
//        double voltage = getVoltage();
//        printVoltage(voltage);
  }
  // --------------------------------------------------------------------------------------------

  delay(500);

}
