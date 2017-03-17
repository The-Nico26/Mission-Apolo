//Calc : soit 0 soit 1. Pourcentage : entre 0 et 1
function res=ErosionGray(image, calc, centerX, centerY, pourcentage)
    image = Negation(image)
    
    calc = MirrorGray(calc, centerX, centerY, pourcentage)
    
    image = DilatationGray(image, calc, centerX, centerY, pourcentage)
    
    res = Negation(image)
endfunction
