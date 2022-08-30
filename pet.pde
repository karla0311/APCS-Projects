import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 400);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work

}

public void draw() {
  //background(192);
  background(#b5d5eb);
  stroke(#964B00);
  fill(#964B00);
  ellipse(200, 180, 260, 230); //head
  stroke(#964B00);
  fill(#964B00);
  ellipse(200, 290, 150, 150); //middle stomach
  stroke(#964B00);
  fill(#964B00);
  ellipse(120, 290, 40, 30); //left arm
  ellipse(285, 285, 40, 30); //right arm
  ellipse(150, 355, 40, 30); //left foot
  ellipse(255, 355, 40, 30); //right foot
  ellipse(110, 85, 50, 50); // left ear
  ellipse(290, 85, 50, 50); // right ear
  stroke(#75400e);
  fill(#75400e);
  ellipse(110, 85, 30, 30); // inner left ear
  ellipse(290, 85, 30, 30); // inner right ear
  stroke(#f0c481);
  fill(#f0c481);
  ellipse(200, 180, 70, 60); // outer mouth
  ellipse(200, 300, 90, 90); // inner stomach
  stroke(#000000);
  fill(#000000);
  ellipse(170, 150, 25, 25); //left eye
  ellipse(230, 150, 25, 25); // right eye
  stroke(#FFFFFF);
  fill(#FFFFFF);
  //ellipse(175, 153, 10, 10); //left eyeball
  //ellipse(235, 153, 10, 10); //right eyeball
  stroke(#000000);
  fill(#000000);
  triangle(195, 170, 205, 170, 200, 180); // nose
  fill(#d13621);
  ellipse(200, 185, 20, 10); // mouth
  stroke(#fc9a86);
  fill(#fc9a86);
  ellipse(140, 180, 30, 20); // blush left
  ellipse(260 , 180, 30, 20); // blush right
  int y = arduino.analogRead(5);
  if (y<30)
    y = 30;
  if (y>175)
    y = 175;
  System.out.println(y);
  fill(#ffffff);
  stroke(#000000);
  ellipse(400, 2+2*y, 30, 50); //bee wing
  fill(#f5e042);
  ellipse(400, 2*y, 50, 30); //bee body
  fill(000000);
  ellipse(390, 2*y, 5, 5); //bee eye
  line(400, (2*y)+15, 400, (2*y)-15); //bee stripe 1
  line(410, (2*y)+13, 410, (2*y)-13); //bee stripe 2
  stroke(#FFFFFF);
  fill(#FFFFFF);
  if (y<130)
    y = 130;
  if (y>140)
    y=140;
  ellipse(175, 15+y, 10, 10); //left eyeball
  ellipse(235, 15+y, 10, 10); //right eyeball
}
