

{+START,IF,{$EQ,{TYPE},inform}}
<div class="global-message alert alert-success alert-dismissible" role="alert">
	<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<i class="fa fa-check-circle fa-lg"></i> {MESSAGE}
</div>
{+END}

{+START,IF,{$EQ,{TYPE},notice}}
<div class="global-message alert alert-warning alert-dismissible" role="alert">
	<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<i class="fa fa-warning fa-lg"></i> {MESSAGE}
</div>
{+END}

{+START,IF,{$EQ,{TYPE},warn}}
<div class="global-message alert alert-danger alert-dismissible" role="alert">
	<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	<i class="fa fa-warning fa-lg"></i> {MESSAGE}
</div>
{+END}

{+START,IF,{$EQ,{TYPE},inform_large}}
<div class="global-message" role="alert">
	<img src="{$IMG*,messageicons/{TYPE}}" alt="">
	{MESSAGE}
</div>
{+END}

{+START,IF,{$EQ,{TYPE},warn_large}}
<div class="global-message" role="alert">
	<img src="{$IMG*,messageicons/{TYPE}}" alt="">
	{MESSAGE}
</div>
{+END}