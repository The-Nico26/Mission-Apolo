//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "X2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Gliese 581d"+".pbm")

//Script de Test
Histogramme(image)
//Display
//display_gray(img)

//Save
//writepbm(image, "random/test.pbm")
