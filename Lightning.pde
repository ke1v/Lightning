  int startX = -1;
  int startY = -1;
  int segmentLengthMin = 10;
  int segmentLengthMax = 25;
  int windowWidth = 500;
  int windowHeight = 500;
  
  void setup() {
    size(500, 500);
    strokeWeight(2);
    background(225);
  }
  void draw() {
    stroke((float)Math.random() * 225, (float)Math.random() * 225, (float)Math.random() * 225);
    while (startX < windowWidth && startX >= 0) {
      int endX = (int)((Math.random() * (segmentLengthMax - segmentLengthMin)) + segmentLengthMin) + startX;
      int endY = ((Math.random() > 0.4) ? (int)((Math.random() * (segmentLengthMax - segmentLengthMin)) + segmentLengthMin) + startY : (int)((Math.random() * (segmentLengthMax - segmentLengthMin)) + segmentLengthMin) * -1 + startY);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    startX = startY = -1;
  }
  void mousePressed() {
    if (startX < 0 || startY < 0) {
      startX = 0;
      startY = Math.min(mouseY, mouseY-75);
    }
  }
