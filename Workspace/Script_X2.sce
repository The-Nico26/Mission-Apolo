//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "X2/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Gliese 581d V2"+".pbm")


//Script de Test
imgFinal = Median(image, 1.2)

display_gray(imgFinal)

//Save
writepbm(imgFinal, "final/X2.pbm")
