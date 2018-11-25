
double getVoltage() {
  noInterrupts();
  int measure = analogRead(_VBAT);
  delay(100);
  interrupts();

  Serial.print(F("Voltage (measure) = "));
  Serial.print(measure);
  Serial.println(F(" [0-4095]"));

  // coeff multiplicateur de 2 à cause de la présence d'un pont diviseur de tension
  // 2.0 * VOLTAGE_BASE * measure / 4096.0
  return ( VOLTAGE_BASE * measure / 2048.0 );
}

void printVoltage(double voltage) {
  Serial.print(F("Voltage = "));
  Serial.print(voltage, 2);
  Serial.println(F(" V"));
}
