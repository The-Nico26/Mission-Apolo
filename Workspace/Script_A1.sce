//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A1/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Encelade_surface"+".pbm")

//Script A2

SearchGrey(image)

//Display
display_gray(image)

//Save
writepbm(image, "final/A1.pbm")
