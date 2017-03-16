//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "N1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Contours"+".pbm")

//Script de Test
img = Contours(image, 6)
//Display
display_gray(img)

//Save
writepbm(image, "final/N1.pbm")
