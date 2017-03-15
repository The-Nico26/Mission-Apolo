//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "U1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"U1_surface"+".pbm")


//Script de Test
//Contours


imgFinal = Contours(image, 6)

//Display
display_gray(imgFinal)

//Save
//writepbm(image, "random/test.pbm")
