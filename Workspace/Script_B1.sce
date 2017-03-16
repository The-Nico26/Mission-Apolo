//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "B1/"
DIR_SCRIPT_NAME = "../Scripts/"
funcprot(0);

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Gliese 667Cc_surface"+".pbm")

//Script B1

image = Egalisation(image, 8)
clf()
//Display
display_gray(image)

//Save
writepbm(image, "final/B1.pbm")
