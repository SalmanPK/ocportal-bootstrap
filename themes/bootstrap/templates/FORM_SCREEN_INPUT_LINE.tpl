
<input {+START,IF_PASSED,MAXLENGTH}maxlength="{MAXLENGTH*}" {+END}{+START,IF_NON_PASSED,MAXLENGTH}maxlength="255" {+END}tabindex="{TABINDEX*}" class="form-control input_line{REQUIRED*} wide_field form-control" type="{+START,IF_NON_PASSED,TYPE}text{+END}{+START,IF_PASSED,TYPE}{TYPE*}{+END}" id="{NAME*}" name="{NAME*}" value="{DEFAULT*}" />

