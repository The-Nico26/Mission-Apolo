//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "X2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Gliese 581d"+".pbm")

//Script de Test

calc = [
0, 0, 1, 0, 0;
0, 1, 2, 1, 0;
1, 2, 1, 2, 1;
0, 1, 2, 1, 0;
0, 0, 1, 0, 0;]
centerX = 3
centerY = 3

//img = Convolution(image, calc, centerX, centerY, 17)
img = Median(image)
imgBinary = ToBinary(img, (min(img)+max(img))/2)
for x=0:1
    imgBinary = Erosion(imgBinary)
end


imgNoise = Remove(img, imgBinary)
imgFinal = Remove(img, imgNoise)
//Display
display_gray(img)

//Save
//writepbm(image, "random/test.pbm")
