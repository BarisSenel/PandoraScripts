
farmableposx = 36  - 1
farmableposy = 24 - 1
farmableid = 4584
seedid = 4585
seeddropposx = 36 - 1
seeddropposy = 22 - 1
breakbotposx = 40 - 1
breakbotposy = 22 - 1


function blokkir()
    punch(0 , -1)
    sleep(200)
    punch(0 , -1)
    sleep(200)
    punch(0 , -1)
    sleep(200)
    punch(0 , -1)
    sleep(200)
end

function blokkoy()
    place(farmableid,0, -1 )
    sleep(200)
end




while true do
if findItem(farmableid) <= 10 then 
    findPath(farmableposx , farmableposy)
    sleep(1000)
    collect(1)
    sleep(1000)
    findPath(breakbotposx, breakbotposy)
else
    findPath(breakbotposx, breakbotposy)
end
    sleep(200)
if findItem(seedid) >= 190 then
    findPath(seeddropposx, seeddropposy)
    sleep(1000)
    drop(seedid)
    sleep(1000)
    findPath(breakbotposx, breakbotposy)
else
    findPath(breakbotposx, breakbotposy)
end
    sleep(200)
    blokkoy()
    sleep(200)
    blokkir()
    sleep(200)
    collect(1)
end



