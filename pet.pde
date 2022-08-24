void setup()
{
size(400,400);
}

void draw()
{
stroke(#964B00);
fill(#964B00);
ellipse(200, 180, 260, 230); //body
stroke(#964B00);
fill(#964B00);
ellipse(200, 290, 150, 150); //middle stomach
//ellipse(180, 100, 50, 50); //left outer eye
//ellipse(220, 100, 50, 50); //right outer eye
stroke(#000000);
fill(#000000);
ellipse(170, 150, 25, 25); //left eye
ellipse(230, 150, 25, 25); // right eye
stroke(#964B00);
fill(#964B00);
ellipse(120, 290, 40, 30); //left arm
ellipse(285, 285, 40, 30); //right arm
ellipse(150, 355, 40, 30); //left foot
ellipse(255, 355, 40, 30); //right foot
ellipse(110, 85, 50, 50); // left ear
ellipse(290, 85, 50, 50); // right ear
stroke(#FFFFFF);
fill(#FFFFFF);
ellipse(175, 153, 10, 10); //left eyeball
ellipse(235, 153, 10, 10); //right eyeball
}
