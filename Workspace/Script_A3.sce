//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A3/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Europa_surface"+".pbm")

//Script de Test
calc = [
-1, -2, -1; 
0, 0, 0; 
1, 2, 1;]
centerX = 2
centerY = 2

imgFinal = Convolution(image, calc, centerX, centerY, 6)
imgFinal = ColorRange(imgFinal, 50, 255)
imgFinal = Normalisation(imgFinal)
//imgFinal = Contours(image, 6)
//Display

display_gray(imgFinal)
//Histo(imgFinal)
//Histo(image)
//Save
writepbm(imgFinal, "final/A3.pbm")
