PImage bg_level1;
PImage bg_level2;
PImage bg_level3;
PImage bg_level4;
PImage musuh1_kiri, musuh1_kanan, musuh2_kanan, musuh2_kiri;
PImage musuh3_kiri, musuh3_kanan, musuh4_kanan, musuh4_kiri;
PImage musuh5_kiri, musuh5_kanan, musuh6_kiri, musuh6_kanan;
PImage musuh7_kiri, musuh7_kanan, musuh8_kiri, musuh8_kanan;
PImage hero_kanan, hero_kiri, hero2_kanan, hero2_kiri, hero3_kanan, hero3_kiri;
PImage gameover, ikanikan, hiu, paus, load_page, pause_page;
PImage hero1load, hero2load, hero3load;
boolean movekiri = true;
boolean movekanan = false;
boolean moveatas = false;
boolean movebawah = true;

boolean m2movekiri = false;
boolean m2movekanan = true;
boolean m2moveatas = true;
boolean m2movebawah = false;

boolean m3movekiri = true;
boolean m3moveatas = true;
boolean m3movebawah = false;
boolean m3movekanan = false;

boolean m4movekanan = true;
boolean m4movekiri = false;
boolean m4moveatas = false;
boolean m4movebawah = true;

boolean m5movekanan = true;
boolean m5movekiri = false;
boolean m5moveatas = false;
boolean m5movebawah = true;

boolean m6movekanan = false;
boolean m6movekiri = true;
boolean m6moveatas = false;
boolean m6movebawah = true;

boolean m7movekanan = true;
boolean m7movekiri = false;
boolean m7moveatas = false;
boolean m7movebawah = true;

boolean m8movekanan = false;
boolean m8movekiri = true;
boolean m8moveatas = true;
boolean m8movebawah = false;

//boolean loadingPage = true;

boolean kiri_kanan_hero= true;

float musuh1x = 950;
float musuh1y = 100;
float musuh2x = 100;
float musuh2y = 300;
float musuh3x = 800;
float musuh3y = 580;
float musuh4x = 300;
float musuh4y = 130;
float musuh5x = 800;
float musuh5y = 150;
float musuh6x = 150;
float musuh6y = 500;
float musuh7x = 200;
float musuh7y = 450;
float musuh8x = 650;
float musuh8y = 400;

float herox = 500;
float heroy = 550;

float ikanhijaux = -200;
float ikanhijauy = 100;
float hiux = 1100;
float hiuy = 500;
float pausx = -150;
float pausy = 80;

int ikangerak, hiugerak ;

int point = 0;
int nyawa = 3;
int level = 1;
int gamejalan = 1;
int hero1loady, hero2loady, hero3loady = - 50;
void setup() {
  size(1100, 750);
  ikangerak = millis();
  hiugerak = millis();
  bg_level1 = loadImage("Asset/level_1/bg_level1.jpg");
  bg_level2 = loadImage("Asset/level_2/bg_level2.jpg");
  bg_level3 = loadImage("Asset/level_3/bg_level3.jpg");
  bg_level4 = loadImage("Asset/level_4/bg_level4.jpg");

  musuh1_kiri = loadImage("Asset/level_1/musuh1_kiri.png");
  musuh1_kanan = loadImage("Asset/level_1/musuh1_kanan.png");
  musuh2_kanan = loadImage("Asset/level_1/musuh2_kanan.png");
  musuh2_kiri = loadImage("Asset/level_1/musuh2_kiri.png");
  musuh3_kiri = loadImage("Asset/level_2/musuh3_kiri.png");
  musuh3_kanan = loadImage("Asset/level_2/musuh3_kanan.png");
  musuh4_kiri = loadImage("Asset/level_2/musuh4_kiri.png");
  musuh4_kanan = loadImage("Asset/level_2/musuh4_kanan.png");
  musuh5_kanan = loadImage("Asset/level_3/musuh5_kanan.png");
  musuh5_kiri = loadImage("Asset/level_3/musuh5_kiri.png");
  musuh6_kanan = loadImage("Asset/level_3/musuh6_kanan.png");
  musuh6_kiri = loadImage("Asset/level_3/musuh6_kiri.png");
  musuh7_kanan = loadImage("Asset/level_4/musuh7_kanan.png");
  musuh7_kiri = loadImage("Asset/level_4/musuh7_kiri.png");
  musuh8_kanan = loadImage("Asset/level_4/musuh8_kanan.png");
  musuh8_kiri = loadImage("Asset/level_4/musuh8_kiri.png");

  hero_kanan = loadImage("Asset/hero/hero_kanan.png");
  hero_kiri = loadImage("Asset/hero/hero_kiri.png");
  hero2_kanan = loadImage("Asset/hero/hero3_kanan.png");
  hero2_kiri = loadImage("Asset/hero/hero3_kiri.png");
  hero3_kanan = loadImage("Asset/hero/hero4_kanan.png");
  hero3_kiri = loadImage("Asset/hero/hero4_kiri.png");

  ikanikan = loadImage("Asset/ikanhijau_kanan.png");
  hiu = loadImage("Asset/hiu.png");
  paus = loadImage("Asset/paus.png");
  gameover = loadImage("Asset/gameover.png");
  load_page = loadImage("Asset/loading_page/start_bg.jpeg");
  pause_page = loadImage("Asset/loading_page/pause_bg.jpeg");
  hero1load = loadImage("Asset/loading_page/hero1.png");
  hero2load = loadImage("Asset/loading_page/hero2.png");
  hero3load = loadImage("Asset/loading_page/hero3.png");
}

void draw() {
  if (keyPressed == true && key == ENTER) {
    gamejalan = 2;
  }
  if (keyPressed == true && key == BACKSPACE) {
    hero1loady = -150;
    hero2loady = -150;
    hero3loady = -150;
    gamejalan = 3;
  }
  if (gamejalan == 1) {
    loadingpage();
  }
  if (gamejalan == 2) {
    if (point < 0 || nyawa == 0) {
      image(gameover, 290, 120, 500, 500);
      textSize(40);
      text("Tekan SHIFT Untuk Bermain Lagi!!", 270, 510);
      if (keyPressed == true && key == CODED && keyCode == SHIFT) {
        point = 0;
        nyawa = 3;
        level = 1;
        herox = 500;
        heroy = 550;
      }
    }

    if (point >= 10 && point < 20  ) {
      level = 2;
    }
    if (point >= 20 && point < 40) {
      level = 3;
    }
    if (point >= 40) {
      level = 4;
    }

    if (level == 1 && nyawa > 0 && point >= 0) {
      level1();
    }
    if (level == 2 && nyawa > 0 && point >- 0) {
      level2();
    }
    if (level == 3 && nyawa > 0 && point >= 0) {
      level3();
    }
    if (level == 4 && nyawa > 0 && point >= 0) {
      level4();
    }
  }
  if (gamejalan == 3){
    pausepage();
  }
}

//fungsi  fungsi
void m1kiribawah() {
  if (movekiri == true && movebawah == true) {
    image(musuh1_kiri, musuh1x, musuh1y, 100, 80);
    musuh1x = musuh1x - 5;
    musuh1y += 5;
    if (musuh1x <= 50) {
      movekiri = false;
      movekanan = true;
    }
    if (musuh1y >= 620) {
      movebawah = false;
      moveatas = true;
    }
  }
}

void m1kiriatas() {
  if (movekiri == true && moveatas == true) {
    image(musuh1_kiri, musuh1x, musuh1y, 100, 80);
    musuh1x = musuh1x - 5;
    musuh1y -= 5;
    if (musuh1x <= 50) {
      movekiri = false;
      movekanan = true;
    }
    if (musuh1y <= 50) {
      movebawah = true;
      moveatas = false;
    }
  }
}

void m1kananatas() {
  if (movekanan == true && moveatas == true) {
    image(musuh1_kanan, musuh1x, musuh1y, 100, 80);
    musuh1x = musuh1x + 5;
    musuh1y -= 5;
    if (musuh1x >= 950) {
      movekiri = true;
      movekanan = false;
    }
    if (musuh1y <= 50) {
      movebawah = true;
      moveatas = false;
    }
  }
}

void m1kananbawah() {
  if (movekanan == true && movebawah == true) {
    image(musuh1_kanan, musuh1x, musuh1y, 100, 80);
    musuh1x = musuh1x + 5;
    musuh1y += 5;
    if (musuh1x >= 950) {
      movekiri = true;
      movekanan = false;
    }
    if (musuh1y >= 620) {
      movebawah = false;
      moveatas = true;
    }
  }
}

void m2kananatas() {
  if (m2movekanan == true && m2moveatas == true) {
    image(musuh2_kanan, musuh2x, musuh2y, 100, 60);
    musuh2x += 8;
    musuh2y -= 8;
    if (musuh2y <= 100) {
      m2moveatas = false;
      m2movebawah = true;
    }
    if (musuh2x >= 890) {
      m2movekanan = false;
      m2movekiri = true;
    }
  }
}

void m2kananbawah() {
  if (m2movekanan == true && m2movebawah == true) {
    image(musuh2_kanan, musuh2x, musuh2y, 100, 60);
    musuh2x += 8;
    musuh2y += 8;
    if (musuh2x >= 890) {
      m2movekiri = true;
      m2movekanan = false;
    }
    if (musuh2y >= 580) {
      m2moveatas = true;
      m2movebawah = false;
    }
  }
}

void m2kiribawah() {
  if (m2movekiri == true && m2movebawah == true) {
    image(musuh2_kiri, musuh2x, musuh2y, 100, 60);
    musuh2x -= 8;
    musuh2y += 8;
    if (musuh2x <= 100) {
      m2movekanan = true;
      m2movekiri = false;
    }
    if (musuh2y >= 580) {
      m2movebawah = false;
      m2moveatas = true;
    }
  }
}

void m2kiriatas() {
  if (m2movekiri == true && m2moveatas == true) {
    image(musuh2_kiri, musuh2x, musuh2y, 100, 60);
    musuh2x -= 8;
    musuh2y -= 8;
    if (musuh2x <= 100) {
      m2movekiri = false;
      m2movekanan = true;
    }
    if (musuh2y <= 100) {
      m2moveatas = false;
      m2movebawah = true;
    }
  }
}

//level2

void m3kiriatas() {
  if (m3movekiri == true && m3moveatas == true) {
    image(musuh3_kiri, musuh3x, musuh3y, 100, 80);
    musuh3x -= 7;
    musuh3y -= 7;
    if (musuh3x <= 100) {
      m3movekiri = false;
      m3movekanan = true;
    }
    if (musuh3y <= 100) {
      m3moveatas = false;
      m3movebawah = true;
    }
  }
}

void m3kananatas() {
  if (m3movekanan == true && m3moveatas == true) {
    image(musuh3_kanan, musuh3x, musuh3y, 100, 80);
    musuh3x += 7;
    musuh3y -= 7;
    if (musuh3x >= 890) {
      m3movekanan = false;
      m3movekiri = true;
    }
    if (musuh3y <= 100) {
      m3movebawah = true;
      m3moveatas = false;
    }
  }
}

void m3kananbawah() {
  if (m3movekanan == true && m3movebawah == true) {
    image(musuh3_kanan, musuh3x, musuh3y, 100, 80);
    musuh3x += 7;
    musuh3y += 7;
    if (musuh3x >= 890) {
      m3movekiri = true;
      m3movekanan = false;
    }
    if (musuh3y >= 580) {
      m3movebawah = false;
      m3moveatas = true;
    }
  }
}

void m3kiribawah () {
  if (m3movebawah == true && m3movekiri == true) {
    image(musuh3_kiri, musuh3x, musuh3y, 100, 80);
    musuh3x -= 7;
    musuh3y += 7;
    if (musuh3y >= 580) {
      m3movebawah = false;
      m3moveatas = true;
    }
    if (musuh3x <= 100) {
      m3movekiri = false;
      m3movekanan = true;
    }
  }
}

void m4kananbawah() {
  if (m4movekanan == true && m4movebawah == true) {
    image(musuh4_kanan, musuh4x, musuh4y, 90, 90);
    musuh4x += 9;
    musuh4y += 9;
    if (musuh4x >= 890) {
      m4movekanan = false;
      m4movekiri = true;
    }
    if (musuh4y >= 580) {
      m4movebawah = false;
      m4moveatas = true;
    }
  }
}

void m4kiribawah() {
  if (m4movekiri == true && m4movebawah == true) {
    image(musuh4_kiri, musuh4x, musuh4y, 90, 90);
    musuh4x -= 9;
    musuh4y += 9;
    if (musuh4y >= 580) {
      m4movebawah = false;
      m4moveatas = true;
    }
    if (musuh4x <= 100) {
      m4movekiri = false;
      m4movekanan = true;
    }
  }
}

void m4kiriatas() {
  if (m4movekiri == true && m4moveatas == true) {
    image(musuh4_kiri, musuh4x, musuh4y, 90, 90);
    musuh4x -= 9;
    musuh4y -= 9;
    if (musuh4x <= 100) {
      m4movekiri = false;
      m4movekanan = true;
    }
    if (musuh4y <= 100) {
      m4moveatas = false;
      m4movebawah = true;
    }
  }
}

void m4kananatas() {
  if (m4movekanan == true && m4moveatas == true) {
    image(musuh4_kanan, musuh4x, musuh4y, 90, 90);
    musuh4x += 9;
    musuh4y -= 9;
    if (musuh4x >= 890) {
      m4movekanan = false;
      m4movekiri = true;
    }
    if (musuh4y <= 100) {
      m4moveatas = false;
      m4movebawah = true;
    }
  }
}

//level3
void m5kananbawah() {
  if (m5movekanan == true && m5movebawah == true) {
    image(musuh5_kanan, musuh5x, musuh5y, 90, 90);
    musuh5x += 8;
    musuh5y += 8;
    if (musuh5x >= 890) {
      m5movekanan = false;
      m5movekiri = true;
    }
    if (musuh5y >= 580) {
      m5movebawah = false;
      m5moveatas = true;
    }
  }
}

void m5kiribawah() {
  if (m5movekiri == true && m5movebawah == true) {
    image(musuh5_kiri, musuh5x, musuh5y, 90, 90);
    musuh5x -= 8;
    musuh5y += 8;
    if (musuh5y >= 580) {
      m5movebawah = false;
      m5moveatas = true;
    }
    if (musuh5x <= 100) {
      m5movekiri = false;
      m5movekanan = true;
    }
  }
}

void m5kiriatas() {
  if (m5movekiri == true && m5moveatas == true) {
    image(musuh5_kiri, musuh5x, musuh5y, 90, 90);
    musuh5x -= 8;
    musuh5y -= 8;
    if (musuh5x <= 100) {
      m5movekiri = false;
      m5movekanan = true;
    }
    if (musuh5y <= 100) {
      m5moveatas = false;
      m5movebawah = true;
    }
  }
}

void m5kananatas() {
  if (m5movekanan == true && m5moveatas == true) {
    image(musuh5_kanan, musuh5x, musuh5y, 90, 90);
    musuh5x += 8;
    musuh5y -= 8;
    if (musuh5x >= 890) {
      m5movekanan = false;
      m5movekiri = true;
    }
    if (musuh5y <= 100) {
      m5moveatas = false;
      m5movebawah = true;
    }
  }
}

void m6kananbawah() {
  if (m6movekanan == true && m6movebawah == true) {
    image(musuh6_kanan, musuh6x, musuh6y, 90, 90);
    musuh6x += 8;
    musuh6y += 8;
    if (musuh6x >= 890) {
      m6movekanan = false;
      m6movekiri = true;
    }
    if (musuh6y >= 580) {
      m6movebawah = false;
      m6moveatas = true;
    }
  }
}

void m6kiribawah() {
  if (m6movekiri == true && m6movebawah == true) {
    image(musuh6_kiri, musuh6x, musuh6y, 90, 90);
    musuh6x -= 8;
    musuh6y += 8;
    if (musuh6y >= 580) {
      m6movebawah = false;
      m6moveatas = true;
    }
    if (musuh6x <= 100) {
      m6movekiri = false;
      m6movekanan = true;
    }
  }
}

void m6kiriatas() {
  if (m6movekiri == true && m6moveatas == true) {
    image(musuh6_kiri, musuh6x, musuh6y, 90, 90);
    musuh6x -= 8;
    musuh6y -= 8;
    if (musuh6x <= 100) {
      m6movekiri = false;
      m6movekanan = true;
    }
    if (musuh6y <= 100) {
      m6moveatas = false;
      m6movebawah = true;
    }
  }
}

void m6kananatas() {
  if (m6movekanan == true && m6moveatas == true) {
    image(musuh6_kanan, musuh6x, musuh6y, 90, 90);
    musuh6x += 8;
    musuh6y -= 8;
    if (musuh6x >= 890) {
      m6movekanan = false;
      m6movekiri = true;
    }
    if (musuh6y <= 100) {
      m6moveatas = false;
      m6movebawah = true;
    }
  }
}

//level4
void m7kananbawah() {
  if (m7movekanan == true && m7movebawah == true) {
    image(musuh7_kanan, musuh7x, musuh7y, 90, 90);
    musuh7x += 5;
    musuh7y += 5;
    if (musuh7x >= 890) {
      m7movekanan = false;
      m7movekiri = true;
    }
    if (musuh7y >= 580) {
      m7movebawah = false;
      m7moveatas = true;
    }
  }
}

void m7kiribawah() {
  if (m7movekiri == true && m7movebawah == true) {
    image(musuh7_kiri, musuh7x, musuh7y, 90, 90);
    musuh7x -= 5;
    musuh7y += 5;
    if (musuh7y >= 580) {
      m7movebawah = false;
      m7moveatas = true;
    }
    if (musuh7x <= 100) {
      m7movekiri = false;
      m7movekanan = true;
    }
  }
}

void m7kiriatas() {
  if (m7movekiri == true && m7moveatas == true) {
    image(musuh7_kiri, musuh7x, musuh7y, 90, 90);
    musuh7x -= 5;
    musuh7y -= 5;
    if (musuh7x <= 100) {
      m7movekiri = false;
      m7movekanan = true;
    }
    if (musuh7y <= 100) {
      m7moveatas = false;
      m7movebawah = true;
    }
  }
}

void m7kananatas() {
  if (m7movekanan == true && m7moveatas == true) {
    image(musuh7_kanan, musuh7x, musuh7y, 90, 90);
    musuh7x += 5;
    musuh7y -= 5;
    if (musuh7x >= 890) {
      m7movekanan = false;
      m7movekiri = true;
    }
    if (musuh7y <= 100) {
      m7moveatas = false;
      m7movebawah = true;
    }
  }
}

void m8kananbawah() {
  if (m8movekanan == true && m8movebawah == true) {
    image(musuh8_kanan, musuh8x, musuh8y, 100, 90);
    musuh8x += 6;
    musuh8y += 6;
    if (musuh8x >= 890) {
      m8movekanan = false;
      m8movekiri = true;
    }
    if (musuh8y >= 580) {
      m8movebawah = false;
      m8moveatas = true;
    }
  }
}

void m8kiribawah() {
  if (m8movekiri == true && m8movebawah == true) {
    image(musuh8_kiri, musuh8x, musuh8y, 100, 90);
    musuh8x -= 6;
    musuh8y += 6;
    if (musuh8y >= 580) {
      m8movebawah = false;
      m8moveatas = true;
    }
    if (musuh8x <= 100) {
      m8movekiri = false;
      m8movekanan = true;
    }
  }
}

void m8kiriatas() {
  if (m8movekiri == true && m8moveatas == true) {
    image(musuh8_kiri, musuh8x, musuh8y, 100, 90);
    musuh8x -= 6;
    musuh8y -= 6;
    if (musuh8x <= 100) {
      m8movekiri = false;
      m8movekanan = true;
    }
    if (musuh8y <= 100) {
      m8moveatas = false;
      m8movebawah = true;
    }
  }
}

void m8kananatas() {
  if (m8movekanan == true && m8moveatas == true) {
    image(musuh8_kanan, musuh8x, musuh8y, 100, 90);
    musuh8x += 6;
    musuh8y -= 6;
    if (musuh8x >= 890) {
      m8movekanan = false;
      m8movekiri = true;
    }
    if (musuh8y <= 100) {
      m8moveatas = false;
      m8movebawah = true;
    }
  }
}

void pencet() {
  if (heroy >= 0) {
    if (keyPressed == true && key == CODED && keyCode == UP) {
      heroy -= 10;
    }
  }
  if (heroy <= 630) {
    if (keyPressed == true && key == CODED && keyCode == DOWN) {
      heroy += 10;
    }
  }
  if (herox <= 1000) {
    if (keyPressed == true && key == CODED && keyCode == RIGHT) {
      herox += 10;
      kiri_kanan_hero = true;
    }
  }
  if (herox >= 0) {
    if (keyPressed == true && key == CODED && keyCode == LEFT) {
      herox -= 10;
      kiri_kanan_hero = false;
    }
  }
}

void makan() {
  if (level < 4) {
    if (herox < musuh1x + 60 && herox > musuh1x - 80 && heroy < musuh1y + 40 && heroy > musuh1y - 40 ) {
      point += 1;
      musuh1y = random(100, 650);
      musuh1x = random(100, 950);
    }
    if (herox < musuh2x + 70 && herox > musuh2x - 80 && heroy < musuh2y + 20 && heroy > musuh2y - 20 ) {
      point += 1;
      musuh2y = random(100, 650);
      musuh2x = random(100, 950);
    }
    if (herox < musuh3x + 70 && herox > musuh3x - 80 && heroy < musuh3y + 20 && heroy > musuh3y - 20 ) {
      point += 1;
      musuh3y = random(100, 650);
      musuh3x = random(100, 950);
    }
    if (herox < musuh4x + 65 && herox > musuh4x - 65 && heroy < musuh4y + 65 && heroy > musuh4y - 65) {
      point += 1;
      musuh4y = random(100, 650);
      musuh4x = random(100, 950);
    }
    if (herox < musuh5x + 65 && herox > musuh5x - 65 && heroy < musuh5y + 65 && heroy > musuh5y - 65) {
      point += 1;
      musuh5y = random(100, 650);
      musuh5x = random(100, 950);
    }
    if (herox < musuh6x + 65 && herox > musuh6x - 65 && heroy < musuh6y + 65 && heroy > musuh6y - 65) {
      point += 1;
      musuh6y = random(100, 650);
      musuh6x = random(100, 950);
    }
    if (herox < musuh7x + 65 && herox > musuh7x - 65 && heroy < musuh7y + 65 && heroy > musuh7y - 65) {
      point += 1;
      musuh7y = random(100, 650);
      musuh7x = random(100, 950);
    }
    if (herox < musuh8x + 65 && herox > musuh8x - 65 && heroy < musuh8y + 65 && heroy > musuh8y - 65) {
      point += 1;
      musuh8y = random(100, 650);
      musuh8x = random(100, 950);
    }

    if (herox < hiux + 70 && herox > hiux - 60 && heroy < hiuy + 80 && heroy > hiuy - 80 ) {
      point -= 3;
      nyawa -= 1;
      hiux -= 190;
    }
  } else {
    if (herox < musuh1x + 40 && herox > musuh1x - 150 && heroy < musuh1y + 40 && heroy > musuh1y - 40 ) {
      point += 1;
      musuh1y = random(100, 650);
      musuh1x = random(100, 950);
    }
    if (herox < musuh2x + 40 && herox > musuh2x - 150 && heroy < musuh2y + 20 && heroy > musuh2y - 20 ) {
      point += 1;
      musuh2y = random(100, 650);
      musuh2x = random(100, 950);
    }
    if (herox < musuh3x + 40 && herox > musuh3x - 150 && heroy < musuh3y + 20 && heroy > musuh3y - 20 ) {
      point += 1;
      musuh3y = random(100, 650);
      musuh3x = random(100, 950);
    }
    if (herox < musuh4x + 40 && herox > musuh4x - 150 && heroy < musuh4y + 65 && heroy > musuh4y - 65) {
      point += 1;
      musuh4y = random(100, 650);
      musuh4x = random(100, 950);
    }
    if (herox < musuh5x + 40 && herox > musuh5x - 150 && heroy < musuh5y + 65 && heroy > musuh5y - 65) {
      point += 1;
      musuh5y = random(100, 650);
      musuh5x = random(100, 950);
    }
    if (herox < musuh6x + 40 && herox > musuh6x - 150 && heroy < musuh6y + 65 && heroy > musuh6y - 65) {
      point += 1;
      musuh6y = random(100, 650);
      musuh6x = random(100, 950);
    }
    if (herox < musuh7x + 40 && herox > musuh7x - 150 && heroy < musuh7y + 65 && heroy > musuh7y - 65) {
      point += 1;
      musuh7y = random(100, 650);
      musuh7x = random(100, 950);
    }
    if (herox < musuh8x + 40 && herox > musuh8x - 150 && heroy < musuh8y + 65 && heroy > musuh8y - 65) {
      point += 1;
      musuh8y = random(100, 650);
      musuh8x = random(100, 950);
    }

    if (herox < hiux + 150 && herox > hiux - 150 && heroy < hiuy + 80 && heroy > hiuy - 80 ) {
      point += 1;
      hiux = 2000;
    }
    if (herox < pausx + 230 && herox > pausx - 180 && heroy < pausy + 70 && heroy > pausy - 50 ) {
      point -= 5;
      pausx += 450;
      nyawa -= 1;
    }
  }
}

void gerakhero() {
  if (level == 1) {
    if (kiri_kanan_hero == true) {
      image(hero_kanan, herox, heroy, 100, 120);
    } else {
      image(hero_kiri, herox, heroy, 100, 120);
    }
  }
  if (level == 2) {
    if (kiri_kanan_hero == true) {
      image(hero_kanan, herox, heroy, 120, 140);
    } else {
      image(hero_kiri, herox, heroy, 120, 140);
    }
  }
  if (level == 3) {
    if (kiri_kanan_hero == true) {
      image(hero2_kanan, herox, heroy, 130, 105);
    } else {
      image(hero2_kiri, herox, heroy, 130, 105);
    }
  }
  if (level == 4) {
    if (kiri_kanan_hero == true) {
      image(hero3_kanan, herox, heroy, 240, 120);
    } else {
      image(hero3_kiri, herox, heroy, 240, 120);
    }
  }
}

void ikanhijaurame() {
  image(ikanikan, ikanhijaux, ikanhijauy, 200, 150);
  int currentTime = millis();
  if (currentTime > ikangerak + 10000) {
    ikanhijaux += 5;
    if (ikanhijaux == 1100) {
      ikanhijaux = 0;
      ikanhijauy += 200;
    }
    if (ikanhijauy == 700) {
      ikanhijaux = 0;
      ikanhijauy = 100;
    }
  }
}

void ikanhiu() {
  image(hiu, hiux, hiuy, 200, 100);
  int hiuTime = millis();

  if (hiuTime > hiugerak + 20000) {
    hiux -= 15;
    if (hiux < -900) {
      hiux = 1100;
      hiuy -= 150;
    }
    if (hiuy < 50) {
      hiux = 1100;
      hiuy = 500;
    }
  }
}

void ikanpaus() {
  image(paus, pausx, pausy, 250, 125);
  pausx += 8;
  if (pausx >= 1200) {
    pausx = -100;
    pausy += 200;
  }
  if (pausy >= 600) {
    pausx = -1500;
    pausy = 100;
  }
}

void tulisan() {
  textSize(30);
  text("Point = ", 10, 30);
  text(point, 105, 30);
  text("Nyawa = ", 10, 60);
  text(nyawa, 125, 60);
  text("LEVEL : ", 460, 30);
  text(level, 560, 30);
}

void loadingpage() {
  image(load_page, 0, 0, 1100, 750);
  image(hero1load,270,hero1loady,120,160);
  image(hero2load,420,hero2loady,200,160);
  image(hero3load,650,hero3loady,200,160);
  if (hero3loady < 350){
    hero1loady += 10;
    hero2loady += 8;
    hero3loady += 6;
  }
  if(hero3loady >= 350){
    hero1loady = 340;
    hero2loady = 340;
    hero3loady = 340;
  }
}

void pausepage(){
  image(pause_page,0,0,1100,750);
  image(hero1load,270,hero1loady,120,160);
  image(hero2load,420,hero2loady,200,160);
  image(hero3load,650,hero3loady,200,160);
  if (hero3loady < 350){
    hero1loady += 10;
    hero2loady += 8;
    hero3loady += 6;
  }
  if(hero3loady >= 350){
    hero1loady = 340;
    hero2loady = 340;
    hero3loady = 340;
  }
}

//fungsi pelevelan
void level1() {
  image(bg_level1, 0, 0, 1100, 750);
  tulisan();
  ikanhijaurame();
  ikanhiu();

  gerakhero();

  m1kiribawah();
  m1kiriatas();
  m1kananatas();
  m1kananbawah();
  m2kananatas();
  m2kananbawah();
  m2kiriatas();
  m2kiribawah();

  pencet();

  makan();
}

void level2() {
  image(bg_level2, 0, 0, 1100, 750);
  tulisan();
  ikanhijaurame();
  ikanhiu();

  gerakhero();

  m1kiribawah();
  m1kiriatas();
  m1kananatas();
  m1kananbawah();
  m2kananatas();
  m2kananbawah();
  m2kiriatas();
  m2kiribawah();
  m3kiriatas();
  m3kananatas();
  m3kananbawah();
  m3kiribawah();
  m4kiribawah();
  m4kiriatas();
  m4kananbawah();
  m4kananatas();

  pencet();
  makan();
}

void level3() {
  image(bg_level3, 0, 0, 1100, 750);
  tulisan();
  ikanhijaurame();
  ikanhiu();

  gerakhero();

  m1kiribawah();
  m1kiriatas();
  m1kananatas();
  m1kananbawah();
  m2kananatas();
  m2kananbawah();
  m2kiriatas();
  m2kiribawah();
  m3kiriatas();
  m3kananatas();
  m3kananbawah();
  m3kiribawah();
  m4kiribawah();
  m4kiriatas();
  m4kananbawah();
  m4kananatas();
  m5kiribawah();
  m5kiriatas();
  m5kananbawah();
  m5kananatas();
  m6kiribawah();
  m6kiriatas();
  m6kananbawah();
  m6kananatas();

  pencet();
  makan();
}

void level4() {
  image(bg_level4, 0, 0, 1100, 750);
  tulisan();
  ikanhijaurame();
  ikanhiu();

  gerakhero();

  ikanpaus();
  m1kiribawah();
  m1kiriatas();
  m1kananatas();
  m1kananbawah();
  m2kananatas();
  m2kananbawah();
  m2kiriatas();
  m2kiribawah();
  m3kiriatas();
  m3kananatas();
  m3kananbawah();
  m3kiribawah();
  m4kiribawah();
  m4kiriatas();
  m4kananbawah();
  m4kananatas();
  m5kiribawah();
  m5kiriatas();
  m5kananbawah();
  m5kananatas();
  m6kiribawah();
  m6kiriatas();
  m6kananbawah();
  m6kananatas();
  m7kiribawah();
  m7kiriatas();
  m7kananbawah();
  m7kananatas();
  m8kiribawah();
  m8kiriatas();
  m8kananbawah();
  m8kananatas();

  pencet();
  makan();
}
