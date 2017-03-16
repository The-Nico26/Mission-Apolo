//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A4/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Jupiter1"+".pbm")
image2 = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Jupiter2"+".pbm")

//Script de Test
//Cors isolé

imgNoise = Remove(image, image2)
imgFinal = Remove(image, imgNoise)

imgFinal = Normalisation(imgFinal)

imgFinal = Median(imgFinal)
//Display
display_gray(imgFinal)

//Save
//writepbm(image, "random/test.pbm")