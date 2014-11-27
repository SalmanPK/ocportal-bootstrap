"use strict";

function ocf_check_poll(form,min,max,error)
{
	var j=0;
	for (var i=0;i<form.elements.length;i++)
		if ((form.elements[i].checked) && ((form.elements[i].type=='checkbox') || (form.elements[i].type=='radio'))) j++;
	var answer=((j>=min) && (j<=max));
	if (!answer)
	{
		window.fauxmodal_alert(error);
	} else
	{
		disable_button_just_clicked(form.elements['poll_vote_button']);
	}

	return answer;
}