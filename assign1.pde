/* please implement your assign1 code in this file. */
PImage bg1, bg2, treasure, enemy, fighter, hp;
int xHp, xTreasure, yTreasure, xEnemy, yEnemy, xBgFirst, xBgSecond;

void setup () {
  size(640,480) ;  
  
  //background
  bg1 = loadImage("img/bg1.png");  
  bg2 = loadImage("img/bg2.png");
  xBgFirst = 0;
  xBgSecond = -641;
  
  //treasure
  treasure = loadImage("img/treasure.png");
  xTreasure = floor(random(600)); // let the picture inside the screen
  yTreasure = floor(random(440)); // let the picture inside the screen
  
  //enemy 
  enemy = loadImage("img/enemy.png");
  xEnemy = 0;  // the enemy will move from the leftest side
  yEnemy = floor(random(420));  // let the picture inside the screen

  //fighter
  fighter = loadImage("img/fighter.png");
 
  //hp (top)
  fill(#CC0000);
  xHp = floor(random(15,206)); //10<=xHp<=205, at least 5 points of blood (15-10) 
  hp = loadImage("img/hp.png"); 
}

void draw() {
  
  //background
  image(bg1, xBgFirst, 0);
  image(bg2, xBgSecond, 0);
  xBgFirst++;
  xBgSecond++;
  
  if (xBgFirst >= 641){
    xBgFirst = -641;
  }
  if (xBgSecond >= 641){
    xBgSecond = -641;
  }
    
  //treasure
  image(treasure, xTreasure, yTreasure);
  
  //enemy
  image(enemy, xEnemy, yEnemy);
  xEnemy = xEnemy + 5;
  xEnemy %= 640;

  //fighter
  image(fighter, 589, 214.5); // the rightest, in the middle
  
  //hp
  fill(#CC0000);
  rectMode(CORNERS);
  rect(10,3,xHp,27); //under, 10<=xHp<=205, at least 5 points of blood (15-10)
  image(hp, 0, 0); //above
}
