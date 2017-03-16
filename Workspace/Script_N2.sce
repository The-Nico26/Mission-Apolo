//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "N2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Formes"+".pbm")

//Script de Test
img = Erosion(image)
//Display
display_gray(img)

//Save
writepbm(img, "final/N2.pbm")
