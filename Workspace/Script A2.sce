//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Mars_surface.pbm")

//Script A2



//Display
display_gray(image)

//Save
writepbm(image, "random/test.pbm")
