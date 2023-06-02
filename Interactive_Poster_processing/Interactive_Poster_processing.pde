//Project for a Ultrasonic sensor submission
//The distance from the sensor is represented by the different areas of the screen where the mouse is
//Move the cursor in different parts of the screen to explore women's emotions representation in cinema
//it is reccomended to start from the right side of the screen and progress towards the left

//importing video library
import processing.video.*;
Movie video1, video2, video3;
PImage img;

void setup() {
  size(1280, 720);
  //uploading the videos
  video1 = new Movie(this, "video1.mp4");
  video2 = new Movie(this, "video2.mp4");
  video3 = new Movie(this, "video3.mp4");
  //looping the videos
  video1.loop(); 
  video2.loop();
  video3.loop();
  img = loadImage("women.jpg");
}

void draw() {
 
  //constraining each video to a part of the screen
  if (mouseX > 960) {  //distance from sensor= 2 m
    image(video1, 0, 0);
  } 
  //if the mouse is on different parts another video plays
   else if ((mouseX < 960) && (mouseX > 640)) { //distance from sensor= 1.5 m
    image(video2, 0, 0);
  } 
  else if ((mouseX < 640) && (mouseX > 320)) { //distance from sensor= 1 m
    image(video3, 0, 0);
  } 
  //final message for women's month
  else if (mouseX < 320) {  //distance from sensor= 50 cm
    background(0);
    image(img, 0, 0);
    textSize(30);
    text("Feel Joy.",150, 370);
    text("Feel Pain.",590, 370);
    text("Feel Rage.",1040, 370); //message and illustrations of different ways of being woman
    //all illustrations were done separately in processing
    
  } 
}
void movieEvent(Movie m) {
  m.read();
}
