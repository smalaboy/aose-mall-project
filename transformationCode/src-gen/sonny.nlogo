to Citizen :
	if etat == "in_mall"
		in_mall
	if etat == "in_shop"
		in_shop
	if etat == "Evaluate proposal"
		Evaluate proposal
	if etat == "Purchase started"
		Purchase started
	if etat == "Checking out"
		Checking out
	if need to purchase[can buy]/enter mall
		set etat "in_mall"
end
to in_mall :
	if select shop
		set etat "in_shop"
	if mall exited
		set etat "end_node"
end
to end_node :
end
to in_shop :
	if with assistance / receive proposal
		set etat "Evaluate proposal"
	if no assistance
		set etat "Purchase started"
end
to Evaluate proposal :
	if proposal accepted
		set etat "Purchase started"
	if proposal refused
		if other shop exits/select shop
			set etat "in_shop"
		if no other shop
			if stop shopping/exit mall
				set etat "in_mall_end"
end
to Purchase started :
	if purchase finished/chekout
		set etat "Checking out"
end
to Checking out :
	if checkout completed
		if continue/select shop
			set etat "in_shop"
		if stop shopping/exit mall
			set etat "in_mall_end"
end
to in_mall_end :
end
	