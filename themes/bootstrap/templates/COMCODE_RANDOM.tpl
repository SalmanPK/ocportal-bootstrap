{$SET,RAND_ID_RANDOM,rand{$RAND}}

<div id="comcoderandom{$GET,RAND_ID_RANDOM}"></div>
<script>	var parts={};
	{PARTS}

	var use='',rand=window.parseInt(Math.random()*{MAX%});
	for (var i in parts)
	{
		use=parts[i];
		if (i>rand) break;
	}
	var comcoderandom=document.getElementById('comcoderandom{$GET,RAND_ID_RANDOM}');
	set_inner_html(comcoderandom,use);
</script>
<noscript>
	{FULL*}
</noscript>

