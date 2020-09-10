  int startX = -1;
  int startY = -1;
  int segmentLengthMin = 10;
  int segmentLengthMax = 25;
  int windowWidth = 1000;
  int windowHeight = 1000;
  
  public void settings() {
    size(windowWidth, windowHeight);
    smooth(2);
  }
  public void setup() {
    strokeWeight(2);
    background(225);
  }
  public void draw() {
    stroke((float)Math.random() * 225, (float)Math.random() * 225, (float)Math.random() * 225);
    while (startX < windowWidth && startX >= 0) {
      int endX = (int)((Math.random() * (segmentLengthMax - segmentLengthMin)) + segmentLengthMin) + startX;
      int endY = ((Math.random() > 0.4) ? (int)((Math.random() * (segmentLengthMax - segmentLengthMin)) + segmentLengthMin) + startY : (int)((Math.random() * (segmentLengthMax - segmentLengthMin)) + segmentLengthMin) * -1 + startY);
      System.out.println(Math.ceil(Math.random() - 0.5));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    startX = startY = -1;
  }
  public void mousePressed() {
    if (startX < 0 || startY < 0) {
      startX = 0;
      startY = Math.min(mouseY, mouseY-75);
    }
  }
