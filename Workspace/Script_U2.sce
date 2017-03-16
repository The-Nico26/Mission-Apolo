//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "U2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"U2_surface"+".pbm")

//Script de Test
//Cors isolé

img = ColorRange(NormalisationSB(Contours(image, 6)), 115, 255)

//Display
display_gray(img)

//Save
//writepbm(image, "random/test.pbm")
