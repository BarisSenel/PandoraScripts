
farmablekonumx = 36  - 1
farmablekonumy = 24 - 1
farmableid = 4584
seedid = 4585
seeddropkonumx = 36 - 1
seeddropkonumy = 22 - 1
kirmabotkonumx = 40 - 1
kirmabotkonumy = 22 - 1


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
    findPath(farmablekonumx , farmablekonumy)
    sleep(1000)
    collect(2)
    sleep(1000)
    findPath(kirmakonumx, kirmakonumy)
else
    findPath(kirmakonumx, kirmakonumy)
end
    sleep(200)
if findItem(seedid) >= 190 then
    findPath(seeddropkonumx, seeddropkonumy)
    sleep(1000)
    drop(seedid)
    sleep(1000)
    findPath(kirmakonumx, kirmakonumy)
else
    findPath(kirmakonumx, kirmakonumy)
end
    sleep(200)
    blokkoy()
    sleep(200)
    blokkir()
    sleep(200)
    collect(1)
end


