PImage fighter;
PImage bg1;
PImage bg2;
PImage hp;
PImage enemy;
PImage treasure;
int e_X,e_Y,t_X,t_Y,hpLength,X;


void setup() {
  size(640,480);
  background(0);
  e_X=0;
  e_Y=floor(random(480));
  t_X=floor(random(640));
  t_Y=floor(random(480));
  hpLength=floor(random(180));
  fighter = loadImage("img/fighter.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  hp = loadImage("img/hp.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
}

void draw() {
  //background
  image(bg2,X%640,0);
  image(bg1,X%640-640,0);
  X+=1;
  //HP
  colorMode(RGB);
  rect(20,5,hpLength,25);
  fill(150,0,0);
  image(hp,5,5);
  //treasure
  image(treasure,t_X,t_Y);
  //fighter
  image(fighter,580,240);
  //Enemy
  image(enemy,e_X,e_Y);
  //move
  e_X+=3;
  //repeat
  e_X%=640;
}
