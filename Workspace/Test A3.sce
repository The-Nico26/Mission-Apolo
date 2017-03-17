//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A3/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Europa_surface"+".pbm")
image = ColorRange(image, 200, 255)
display_gray(image)
figure
//Script de Test
calc = [
0, 1, 0;
1, 1, 1;
0, 1, 0;]

centerX = 2
centerY = 2
imgFinal = DilatationGray(image, calc, centerX, centerY, .9)

//Display

display_gray(imgFinal)
//Histo(imgFinal)
//Histo(image)
//Save
writepbm(imgFinal, "final/A3.pbm")
