//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A3/"
DIR_SCRIPT_NAME = "../Scripts/"

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

imgFinal = Normalisation(imgFinal)
//Display
display_gray(imgFinal)

//Save
//writepbm(image, "random/test.pbm")
