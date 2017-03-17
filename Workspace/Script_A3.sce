//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A3/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Europa_surface"+".pbm")

//Script de Test

//imgFinal = Median(image, 2)
imgFinal = ColorRange(image, 200, 255)
//imgFinal = Moyenne(imgFinal, 2)
//imgFinal = ColorRange(imgFinal, 50, 255)
//Display

display_gray(imgFinal)

//Save
writepbm(imgFinal, "final/A3B.pbm")
