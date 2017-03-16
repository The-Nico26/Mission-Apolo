//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "X1/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
load(DIR_IMG_NAME+DIR_IMG_MISSION+"Asellus Secundus"+".dat")

//Script de Test
imgFinal = ifft(imgT)
//Display
display_gray(imgFinal)

//Save
writepbm(imgFinal, "final/X1.pbm")
