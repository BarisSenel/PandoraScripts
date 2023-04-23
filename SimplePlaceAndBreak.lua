
farmableposx = 83  - 1
farmableposy = 25 - 1
farmableid = 5666
seedid = 5667
seeddropposx = 83 - 1
seeddropposy = 23 - 1
breakbotposx = 78 - 1
breakbotposy = 23 - 1


function blokkir()
    punch(0 , -1)
    sleep(230)
    punch(0 , -1)
    sleep(230)
    punch(0 , -1)
    sleep(230)
    punch(0 , -1)
    sleep(230)
   
end

function blokkoy()
    place(farmableid,0, -1 )
    sleep(230)
end




while true do
if findItem(farmableid) == 0 then 
    findPath(farmableposx , farmableposy)
    sleep(1000)
    collect(2)
    sleep(1000)
    findPath(breakbotposx, breakbotposy)
end
    sleep(200)
if findItem(seedid) >= 190 then
    findPath(seeddropposx, seeddropposy)
    sleep(1000)
    drop(seedid)
    sleep(1000)
    findPath(breakbotposx, breakbotposy)
end
    sleep(200)
    blokkoy()
    sleep(200)
    blokkir()
    sleep(200)
    collect(1)
end




