script "card1 Behavior"
script "card1 Behavior"
on preOpenCard
   local theText, tTextToDecode
   put empty into field "rawText"
   put empty into field "theHTMLText"
   put url ("binfile:Z:\Temp\DemPower\sv\TextTests\0.2A_v2.txt") into tTextToDecode
   put textDecode(tTextToDecode,"utf8") into theText -- not required if input already UTF8
   set the text of field "rawText"  to theText
   put "START " before theText
   put " END" after theText
   set the HTMLText of field "theHTMLText"  to theText
   --set the HTMLText of field "theHTMLText"  to myHTMLText(theText)
   set the HTMLText of field "Field" to "&scaron;" && "&Aring;" && "&aring;"
end preOpenCard
