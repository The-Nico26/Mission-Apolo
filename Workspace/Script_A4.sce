//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A4/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Jupiter1"+".pbm")
image2 = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Jupiter2"+".pbm")

//Script de Test
//Cors isolé

imgNoise = Remove(image, image2)
imgFinal = Remove(image, imgNoise)

imgFinal = Normalisation(imgFinal)

imgFinal = Median(imgFinal, 1.2)
//Display
display_gray(imgFinal)

//Save
//writepbm(imgFinal, "final/A4.pbm")
