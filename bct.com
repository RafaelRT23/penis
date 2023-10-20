let cor;
let posicaoHorizontal;// x
let posicaoVertical; // y

let posicaoHorizontal2;// x
let posicaoVertical2; // y



function setup() {
  createCanvas(800, 800);// width x height
  background(color(100, 0, 0));
  cor = color(random(0, 255), random(0, 255), random(0, 255));
  posicaoHorizonal = 0;
  posicaoVertical = random(height);
   posicaoHorizonal2 =0;
  posicaoVertical2 = random(height);
  
}

function draw() {
  fill(cor);
   circle(posicaoHorizonal, posicaoVertical, 50);
  circle(posicaoHorizonal2, posicaoVertical2, 50);

  posicaoHorizonal+=random(0, 3);
  posicaoVertical +=random(-3, 3);
   posicaoHorizonal2+=random(0, 3);
  posicaoVertical2 +=random(-3, 3);
  
  if(mouseIsPressed){
      cor = color(random(0, 255), random(0, 255), random(0, 255),random(0,100));
  }
     
  
}
