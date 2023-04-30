----------------------------------------positions
depox = 70 - 1
depoy = 24 - 1
--------------------------------ItemIDS
seedID = 3
blockID = 2
-------------------------------------
function breaks()
punch(-1,0)
sleep(200)
punch(-1,0)
sleep(200)
punch(-1,0)
sleep(200)
end
function koy()
    place(blockID,-1,0)
    sleep(200)
end
say("Starting")
move(-1,0)
sleep(200)
move(-1,0)
while true do
for _, tile in pairs(getTiles()) do
        if tile.fg == seedID then
        findPath(tile.x , tile.y)
    break
    else
    disconnect()
        end
       end 
if findItem(seedID) >= 100 then 
    findPath(depox,depoy)
    sleep(1000)
    drop(seedID,100)
    sleep(1000)
    for _, tile in pairs(getTiles()) do
        if tile.fg == 3 then
        findPath(tile.x , tile.y)
    break
        end
    end
end

if findItem(blockID) == 200 then
  repeat 
     koy()
    sleep(200)
    breaks()
    sleep(200)
    collect(2,0)
    if findItem(seedID) >= 100 then
break
    end
  until(findItem(blockID) == 0)
end
    punch(0,0)
    sleep(200)
    collect(2)
    sleep(200)
end
