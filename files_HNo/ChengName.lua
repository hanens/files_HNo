
local function HNoe(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local HNoChengName = database:get(bot_id.."HNo:Cheng:Name"..data.id_)
if not data.first_name_ then 
if HNoChengName then 
send(msg.chat_id_, msg.id_, "يولد هذا غير اسمه لك ها كلب  ["..HNoChengName..']')
database:del(bot_id.."HNo:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if HNoChengName ~= data.first_name_ then 
local Text = {
  ' هاحبي شكو غيرت اسمك 🌞😹😹😹',
  "هاحبي بعبصوك وغيرت اسمك 🤞😂😂",
  "الو اسمك القديم وين  😂😘",
  'ها يول شو مغير اسمك', 
  'الو غيرت اسمك الو جاوبيني مخنوك😔💔',
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."HNo:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end

end
return {HNo = HNo}
