//VICTORIA
//Sept. 11 2018

size (600, 400);
background (49, 225, 229); //sky

fill (36, 227, 27);
noStroke ();
rect (0, 300, 600, 200); //grass

fill (249, 250, 3);
ellipse (460, 120, 125, 125); //sun

fill (90, 57, 152);
triangle (0, 300, 160, 60, 350, 300); //left mountain

triangle (200, 300, 460, 120, 600, 300); //right mountain

fill (100);
ellipse (220, 350, 60, 60); //robot wheel

stroke (120);
strokeWeight (3);
line (220, 150, 220, 223); //left neck

line (240, 150, 240, 223); //right neck

stroke (90);
strokeWeight (7);
line (230, 150, 230, 223); //middle neck

stroke (100);
strokeWeight (3);
line (270, 135, 290, 150); //bottom antena

line (240, 80, 250, 30); //middle antena

line (200, 90, 190, 75); //left antena

stroke (0);
strokeWeight (2);
line (110, 245, 125, 258); //top finger

line (110, 270, 125, 260); //bottom finger

noStroke ();

fill (120);
rect (120, 250, 60, 20); //robot arm



noStroke ();

fill (0);
rect (170, 223, 100, 130); // robot body

ellipse (230, 120, 90, 90); //robot head

fill (234, 51, 5);
rect (170, 240, 100, 7); //robot red stripe

fill (233, 250, 8);
rect (170, 260, 100, 7); //robot yellow stripe

fill (12, 240, 25);
rect (170, 280, 100, 7); //robot green stripe

fill (12, 86, 240);
rect (170, 300, 100, 7); //robot blue stripe

fill (117, 12, 240);
rect (170, 320, 100, 7); // robot purple stripe

fill (255);
ellipse (240, 115, 30, 30); //robot white eye

fill (0);
ellipse (240, 115, 7, 7); //robot black eye

fill (140);
ellipse (213, 115, 10, 10); // robot left grey circle

ellipse (260, 125, 5, 5); //robot bottom grey circle

ellipse (245, 93, 7, 7); //robot top grey circle

fill (250, 122, 18);
ellipse (400, 200, 20, 20); //small mountain eye

ellipse (470, 200, 40, 40); //big mountain eye

stroke (0);
strokeWeight (3);
line (390, 250, 480, 240); //mountian mouth

line (400, 250, 405, 260); //left teeth left line

line (405, 260, 410, 248); //left teeth right line

line (460, 244, 465, 254); //right teeth left line

line (465, 254, 470, 242); //right teeth right line
