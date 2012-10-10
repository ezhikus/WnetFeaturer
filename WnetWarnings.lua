local wnetFeaturer_origSetItemRef = SetItemRef;
SetItemRef = function(...)
 local link, text, button = ...; 
 if type(text) == "string" and  not IsModifiedClick() and
 ( strfind(text, "Dark Iron Pulverizer") or  
 strfind(text, "Deep Thunder") or 
 strfind(text, "Hurd smasher") or 
 strfind(text, "The Judge's Gavel") or 
 strfind(text, "Bludgeon of the Grinning Dog") or 
 strfind(text, "The Chief's Enforcer") or 
 strfind(text, "Hammer of the Titans") or 
 strfind(text, "Stormherald") or 
 strfind(text, "The Unstoppable Force") or 
 strfind(text, "Blackblade of Shahram") )
 then
	ItemRefTooltip:AddLine(text,1,1,1,1)
	 return wnetFeaturer_showWarning();
 end
 return wnetFeaturer_origSetItemRef(...);
end

function wnetFeaturer_showWarning()
ShowUIPanel(ItemRefTooltip);
 if (not ItemRefTooltip:IsVisible()) then
  ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE");
 end
 ItemRefTooltip:AddLine("Wnet: Использовать эту вещь нельзя!",1,1,1,1)
 ItemRefTooltip:Show();
end