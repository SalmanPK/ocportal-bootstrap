<div class="panel panel-default panel-block_side_printer_friendly">
	<div class="panel-body">
		{+START,IF,{$_GET,wide_print}}
			<span class="print_icon">{!IN_PRINT_MODE}</span>
		{+END}
		{+START,IF,{$NOT,{$_GET,wide_print}}}
			<a class="print_icon" rel="print" target="_blank" title="{!PRINTER_FRIENDLY}: {!LINK_NEW_WINDOW}" href="{URL*}">{!PRINTER_FRIENDLY}</a>
		{+END}
	</div>
</div>

