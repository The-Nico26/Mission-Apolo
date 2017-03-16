//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "X1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
load(DIR_IMG_NAME+DIR_IMG_MISSION+"Asellus Secundus"+".dat")

//Script de Test
img = ifft(imgT)
//Display
display_gray(img)

//Save
//writepbm(image, "random/test.pbm")
