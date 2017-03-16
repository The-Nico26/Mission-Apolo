//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "U1/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"U1_surface"+".pbm")


//Script de Test
//Contours


imgFinal = Contours(image, 6)

//Display
display_gray(imgFinal)

//Save
writepbm(imgFinal, "final/U1.pbm")
