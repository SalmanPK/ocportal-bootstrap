{+START,IF,{$JS_ON}}
	<td id="cell_mark_{ID*}" class="col-moderator-actions">
		<form title="{!MARKER} #{ID*}" class="inline" method="post" action="index.php" id="form_mark_{ID*}">
			{+START,IF,{$NOT,{$IS_GUEST}}}<label for="mark_{ID*}" class="sr-only">{!MARKER} #{ID*}</label>{+END}{$,Guests don't see this so search engines don't; hopefully people with screen-readers are logged in}
			<input {+START,IF,{$NOT,{$IS_GUEST}}}title="{!MARKER} #{ID*}" {+END}value="1" type="checkbox" id="mark_{ID*}" name="mark_{ID*}" onclick="change_class(this,this.parentNode.parentNode.parentNode.parentNode,'ocf_on','ocf_off')">
		</form>
	</td>
{+END}
