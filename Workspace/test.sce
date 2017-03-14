//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Encelade_surface.pbm")

//Script A1
SearchGrey(image)

//Display
display_gray(image)

//Save
writepbm(image, "random/test.pbm")
