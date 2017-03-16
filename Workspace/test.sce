//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "A3/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Europa_surface"+".pbm")

    calc = [
    1, 1, 1; 
    1, -8, 1; 
    1, 1, 1;]
    
    centerX = 2
    centerY = 2
    
    
//Script de Test
img = Convolution(img, calc, centerX, centerY, 3)

//Display
display_gray(img)

//Save
//writepbm(img, "final/X2B.pbm")
