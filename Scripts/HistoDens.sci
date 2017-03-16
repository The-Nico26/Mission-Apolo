function res=HistoDens(histo)
    for i=1:256
        if i==1 then
            res(i) = histo(i)
        else
            res(i) = histo(i)+res(i-1)
        end
    end
endfunction
