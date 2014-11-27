<tr class="{$CYCLE,zebra,zebra_0,zebra_1}">
	<td>
		<label class="sr-only" for="mkey_{UID*}">{!MATCH_KEY}</label>
		<div class="constrain_field">
			<input maxlength="255" class="form-control" type="text" id="mkey_{UID*}" name="mkey_{UID*}" value="{KEY*}" />
		</div>
	</td>
	<td>
		<label class="sr-only" for="msg_{UID*}">{!MATCH_KEY}</label>
		<div class="constrain_field">
			<textarea onfocus="this.setAttribute('rows','10');" onblur="if (!this.form.disable_size_change) this.setAttribute('rows','2');" cols="40" rows="2" class="form-control" id="msg_{UID*}" name="msg_{UID*}">{MSG*}</textarea>
		</div>
	</td>
</tr>
