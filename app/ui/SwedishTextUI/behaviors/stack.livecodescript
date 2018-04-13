script "stack Behavior"
script "stack Behavior"
--
--
function myHTMLText pText
   -- Change Swedish chars for HTML display
   --replace "š" with "&scaron;"  in pText
   --replace "Å" with  "&Aring;" in pText
   replace "å" with "&aring;"  in pText
   #   replace "Ä" with "&Auml;"  in pText
   #   replace "ä" with "&auml;"  in pText
   #   replace "é" with "&eacute;"  in pText
   #   replace "Ö" with "&Ouml;"  in pText
   replace "ö" with "&ouml;" in pText
   #   replace return with "<p></p>" in pText
   return pText
end myHTMLText
