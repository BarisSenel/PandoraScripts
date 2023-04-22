while true do
spamtext = "HELLO"   
botpositionx = 37 - 1   
botpositiony = 21 - 1   



if getBot().x == botpositionx * 32 and getBot().y == botpositiony * 32 then
say(spamtext)
sleep(10000)

else
findPath(botpositionx,botpositiony)
sleep(10000)
say(spamtext)
end
end


