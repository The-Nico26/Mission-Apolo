
Function [y] = contraste (x)
Tab=histogramme(x) 
T= find (Tab==0)
For i = 1 : (length (T) -1)
If T(i+1)-T(i) <>1 then
Lmin = T(i)
Break
End
End
For j = length (T) : -1 : 2
If T(j) – T(j-1) <>1 then
Lmax = T(j)
Break
End
End
y = min (max ( (256/ (Lmax – Lmin))* x – (256/ (Lmax – Lmin))*Lmin , 0) , 255)
imshow (y)
Endfunction
