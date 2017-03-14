//Load Image
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A1/"
DIR_SCRIPT_NAME = "../Scripts/"
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Encelade_surface.pbm")
display_gray(image)
