//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "B2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"GD61"+".pbm")

//Script de Test
//Normalisation
image = Normalisation(image)

//Display
display_gray(image)

//Save
//writepbm(image, "random/test.pbm")
