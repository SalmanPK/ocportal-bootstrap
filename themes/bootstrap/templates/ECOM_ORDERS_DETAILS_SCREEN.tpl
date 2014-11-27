{TITLE}

<div class="table-wrap"><table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results" itemprop="significantLinks">
	<thead>
		<tr>
			<th>{!NAME}</th>
			<th>{!AMOUNT}</th>
			<th>{!QUANTITY}</th>
			<th>{!STATUS}</th>
		</tr>
	</thead>

	<tbody>
		{+START,LOOP,PRODUCTS}
			<tr>
				<td>
					{+START,IF_NON_EMPTY,{PRODUCT_DET_URL}}
						<strong><a href="{PRODUCT_DET_URL*}">{PRODUCT_NAME*}</a></strong>
					{+END}
					{+START,IF_EMPTY,{PRODUCT_DET_URL}}
						<strong>{PRODUCT_NAME*}</strong>
					{+END}
				</td>
				<td>
					{$CURRENCY_SYMBOL}{AMOUNT*}
				</td>
				<td>
					{QUANTITY*}
				</td>
				<td>
					{DISPATCH_STATUS*}
				</td>
			</tr>
		{+END}
	</tbody>
</table></div>
