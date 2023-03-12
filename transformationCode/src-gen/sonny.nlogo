
	
	
to Citizen :
	if etat = "in_mall"
		in_mall
	if etat = "in_shop"
		in_shop
	if etat = "Evaluate_proposal"
		Evaluate_proposal
	if etat = "Purchase_started"
		Purchase_started
	if etat = "Checking_out"
		Checking_out
	if need_to_purchase[can_buy]
		enter_mall
		set etat "in_mall"

end
	


	
to in_mall :
	if select_shop
		set etat "in_shop"
	if mall_exited
		set etat "end_node"

end
	


	
	


	
to end_node :

end
	


	
	


	
to in_shop :
	if with_assistance
		receive_proposal
		set etat "Evaluate_proposal"
	if no_assistance
		set etat "Purchase_started"

end
	


	
to Evaluate_proposal :
	if proposal_accepted
		set etat "Purchase_started"
	if proposal_refused
		if other_shop_exits
			select_shop
			set etat "in_shop"
		if no_other_shop
			if stop_shopping
				exit_mall
				set etat "in_mall_end"

end
	


	
	


	
to Purchase_started :
	if purchase_finished
		chekout
		set etat "Checking_out"

end
	


	
to Checking_out :
	if checkout_completed
		if continue
			select_shop
			set etat "in_shop"
		if stop_shopping
			exit_mall
			set etat "in_mall_end"

end
	


	
	


	
	


	
	


	
to in_mall_end :

end
	


to enter_mall :
end
to receive_proposal :
end
to select_shop :
end
to exit_mall :
end
to chekout :
end
to select_shop :
end
to exit_mall :
end

	