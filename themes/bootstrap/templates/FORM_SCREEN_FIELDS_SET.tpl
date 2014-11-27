<fieldset id="set_wrapper_{SET_NAME*}" class="innocuous_fieldset">
	<legend class="sr-only">{PRETTY_NAME*}</legend>

	{FIELDS}
</fieldset>

<script>	add_event_listener_abstract(window,'load',function () {
		standard_alternate_fields_within('{SET_NAME;}',{$?,{REQUIRED},true,false});
	} );
</script>
