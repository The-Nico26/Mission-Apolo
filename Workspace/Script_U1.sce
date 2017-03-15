//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "U1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"U1_surface"+".pbm")


//Script de Test
//Contours
calc = [
-1, -2, -1; 
0, 0, 0; 
1, 2, 1;]

calc2 = [
-1, 0, 1; 
-2, 0, 2; 
-1, 0, 1;]

centerX = 2
centerY = 2

imgFinal = Contours(image, calc, calc2, centerX, centerY, 6)

//Display
display_gray(imgFinal)

//Save
//writepbm(image, "random/test.pbm")
