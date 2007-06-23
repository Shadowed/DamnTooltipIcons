function ShowIcon(link, text, button)
	local icon = select( 10, GetItemInfo( link ) )
	if( not icon ) then
		return
	end

	ItemRefTooltipTexture10:ClearAllPoints()
	ItemRefTooltipTexture10:SetPoint("TOPLEFT", ItemRefTooltip, "TOPLEFT", 8, -7)
	ItemRefTooltipTexture10:SetTexture(icon)
	ItemRefTooltipTexture10:SetHeight(20)
	ItemRefTooltipTexture10:SetWidth(20)
	ItemRefTooltipTexture10:Show()
	
	ItemRefTooltipTextLeft1:ClearAllPoints()
	ItemRefTooltipTextLeft1:SetPoint("TOPLEFT", ItemRefTooltipTexture10, "TOPLEFT", 24, -2 )

	ItemRefTooltipTextLeft2:ClearAllPoints()
	ItemRefTooltipTextLeft2:SetPoint("TOPLEFT", ItemRefTooltip, "TOPLEFT", 8, -28 )
	
	local width = ItemRefTooltipTexture10:GetWidth() + ItemRefTooltipTextLeft1:GetWidth() + 22
	
	if( width >= ItemRefTooltip:GetWidth() ) then
		ItemRefTooltip:SetWidth( width + 22 )
	end
end

hooksecurefunc("SetItemRef", ShowIcon)