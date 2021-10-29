int start;
int a =2000;
int state;

void setup() {
  size(600, 700);
  background(180);
  start = millis();
  state = 0;
}

void draw() {

  if (state == 0) {
    renderTrafficLight(false, false, true);
    renderStopAndGo(false);
  }
  if (state == 3) {
    renderTrafficLight(true, true, false);
    renderStopAndGo(false);
    if (millis() - start > a) {
      state = 0;
      start = millis();
    }
  }
  if (state == 2) {
    renderTrafficLight(true, false, false);
    renderStopAndGo(true);
    if (millis() - start > a) {
      state = 3;
      start = millis();
    }
  }
  if (state == 1) {
    renderTrafficLight(false, true, false);
    renderStopAndGo(false);
    if (millis() - start > a) {
      state = 2;
      start = millis();
    }
  }

  if (buttonPressed()) {
    renderButton(true);
  } else {
    renderButton(false);
  }
}
