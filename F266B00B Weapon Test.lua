function _OnFrame()
WriteByte(Save+0x35AA,31) --Detection Shield
WriteByte(Save+0x35AB,32) --Test the King
WriteByte(Save+0x35AE,33) --Battlefields of War
WriteByte(Save+0x35AF,34) --Sword of the Ancestors
WriteByte(Save+0x35B3,35) --Beast's Claw
WriteByte(Save+0x35B4,36) --Bone Fist
WriteByte(Save+0x35B5,37) --Proud Fang
WriteByte(Save+0x35B6,38) --Skill and Crossbones
WriteByte(Save+0x35C0,39) --Scimitar
WriteByte(Save+0x35C1,40) --Way to the Dawn
WriteByte(Save+0x35FA,41) --Detection Staff
end

function _OnInit()
if (GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301) and ENGINE_TYPE == "ENGINE" then --PCSX2
	Save = 0x032BB30 --Save File
elseif GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then --PC
	Save = 0x09A7070 - 0x56450E
end
end
