void renderStopAndGo(boolean walk){
  
  PImage walkMan=loadImage("go.png");
  PImage standMan=loadImage("stop.png");
 color black=color(0);
  color go = color(0,255,0);
  color stop= color(255,0,0);
  color off=color(200);
  
  walkMan.resize(35,0);
  standMan.resize(35,0);
  
  imageMode(CENTER);
  
  
  fill(black);
  rect(400, 100, 100, 200);

  if(walk){
    // rita gröna gubben
  fill(go);     
  ellipse(450,250,75,75);
  image(walkMan,450,250);
  fill(off);
  ellipse(450,150,75,75);
 
  } else{
   fill(stop);
    ellipse(450, 150, 75, 75);
    image(standMan, 450, 150);
    fill(off);
    ellipse(450, 250, 75, 75);
  }
  }
  
