while true do
spamtext = "HELLO"   
botpositionx = 37 - 1   
botpositiony = 21 - 1   
SpamWorld = "DESIREDWORLD"

if not getBot().world == SpamWorld then

    sendPacket(3,"action|join_request\nname|SpamWorld\ninvitedWorld|0")
end



if getBot().x == botpositionx * 32 and getBot().y == botpositiony * 32 then
say(spamtext)
sleep(10000)

else
findPath(botpositionx,botpositiony)
sleep(10000)
say(spamtext)
end
end



