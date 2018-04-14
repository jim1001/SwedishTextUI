script "card1 Behavior"
script "card1 Behavior"
on preOpenCard
   local theText, tTextToDecode, tFile
   put empty into field "field1"
   put empty into field "field2"
   put empty into field "field3"
   put assetsFolder() & "/0.2A_v2.txt" into tFile
   -- answer "File:" && tFile
   put url ("binfile:" & tFile) into tTextToDecode
   put textDecode(tTextToDecode,"utf8") into theText
   set the text of field "field1"  to theText
   put "START " before theText
   put " END" after theText
   set the HTMLText of field "field2"  to theText
   --set the HTMLText of field "theHTMLText"  to myHTMLText(theText)
   set the HTMLText of field "field3" to "&scaron;" && "&Aring;" && "&aring;"
end preOpenCard
