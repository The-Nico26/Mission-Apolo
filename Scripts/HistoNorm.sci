function res=HistoNorm(histo, ttP)
    for i=1:256
        res(i) = histo(i)/ttP
    end
endfunction
