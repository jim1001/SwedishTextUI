script "stack Behavior"
script "stack Behavior"
on openStack
   set the textSize of this stack to 20
   set the textFont of this stack to "droid sans"
end openStack
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

function assetsFolder
   if the environment is "mobile" then
      return "/sdcard/JimTestAssets"
   else 
      return "C:/Users/Jim/Dropbox (The University of Manchester)/JimTestAssets" -- user Jim on home PC
   end if
end assetsFolder
