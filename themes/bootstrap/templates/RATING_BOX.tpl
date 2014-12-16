<section class="panel panel-default panel-rating-box">
	<div class="panel-heading">
		<h3 class="panel-title">{!RATING}</h3>
	</div>

	<div class="panel-body">
		<div class="rating-inner" itemscope="itemscope" itemtype="http://schema.org/AggregateRating">
			{+START,IF,{HAS_RATINGS}}
			{+START,LOOP,ALL_RATING_CRITERIA}
			{+START,INCLUDE,RATING_DISPLAY_SHARED}{+END}
			{+END}
			{+END}
			{+START,IF,{$NOT,{HAS_RATINGS}}}
			<em>{!UNRATED}</em>
			{+END}

			{+START,IF,{HAS_RATINGS}}
			<span class="horiz-field-sep">{!VOTES,{OVERALL_NUM_RATINGS*}}</span>
			{+END}
		</div>

		{$,We do not show errors for likes as it is too informal to go into details}
		{+START,IF,{$NOT,{LIKES}}}
		{+START,IF_NON_EMPTY,{ERROR}}
		<div class="rating-error">
			{ERROR}
		</div>
		{+END}
		{+END}

		<div class="rating-form">
			{RATING_FORM}
		</div>
	</div>
</section>