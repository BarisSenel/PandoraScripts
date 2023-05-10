botposx = math.floor(getBot().x / 32)   -- Don't touch it
botposy = math.floor(getBot().y / 32)   -- Don't touch it
botstandx = 42 - 1   -- Client position - 1
botstandy = 24 - 1   -- Client position - 1
SpamWorld = "EXCSM"  -- Desired Spam World start it in spam world idk how to send it to exit :p
spamtext = "SPAM TEXT HERE"  -- SPAM TEXT
spamdelay = 10000 -- spam delay betwwen texts
while true do
if getBot().world ~= SpamWorld:upper() then
    sleep(50000) --try to rejoin after 50 second you can adjust that 
    sendPacket(3,"action|join_request\nname|"..SpamWorld.."\ninvitedWorld|0")
end
if botposx == botstandx and botposy == botstandy then
    say(spamtext)
    sleep(spamdelay)
else
    findPath(botstandx,botstandy)
    say(spamtext)
    sleep(spamdelay)
end
end
