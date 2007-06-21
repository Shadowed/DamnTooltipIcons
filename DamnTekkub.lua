local function ShowIcon(link, text, button)
	ItemRefTooltipTexture10:ClearAllPoints()
	ItemRefTooltipTexture10:SetPoint("TOPLEFT", ItemRefTooltip, "TOPLEFT", 5, -5)
	ItemRefTooltipTexture10:SetTexture(select( 10, GetItemInfo( link ) ))
	ItemRefTooltipTexture10:SetHeight(20)
	ItemRefTooltipTexture10:SetWidth(20)
	ItemRefTooltipTexture10:Show()
	
	ItemRefTooltipTextLeft1:ClearAllPoints()
	ItemRefTooltipTextLeft1:SetPoint("TOPLEFT", ItemRefTooltipTexture10, "TOPLEFT", 24, -5 )

	ItemRefTooltipTextLeft2:ClearAllPoints()
	ItemRefTooltipTextLeft2:SetPoint("TOPLEFT", ItemRefTooltip, "TOPLEFT", 8, -28 )
end

hooksecurefunc("SetItemRef", ShowIcon)