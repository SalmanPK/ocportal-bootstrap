{$,Bootstrap Modals - see JAVASCRIPT_MODALWINDOW.tpl}

<div class="modal" id="modal-confirm" tabindex="-1" role="dialog" aria-labelledby="modal-confirm-title" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="modal-confirm-title">Lorem Ipsum</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-yes" autofocus>{!YES*}</button>
				<button type="button" class="btn btn-default btn-no" data-dismiss="modal">{!NO*}</button>
			</div>
		</div>
	</div>
</div>

<form class="modal" id="modal-prompt" tabindex="-1" role="dialog" aria-labelledby="modal-prompt-title" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="modal-prompt-title">Lorem Ipsum</h4>
			</div>
			<div class="modal-body">
				<label class="modal-question" for="modal-prompt-input"></label>
				<input type="text" id="modal-prompt-input" class="form-control modal-input" autofocus>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-cancel" data-dismiss="modal">{!INPUTSYSTEM_CANCEL*}</button>
				<button type="submit" class="btn btn-primary btn-ok">{!INPUTSYSTEM_OK*}</button>
			</div>
		</div>
	</div>
</form>

<div class="modal" id="modal-alert" tabindex="-1" role="dialog" aria-labelledby="modal-alert-title" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="modal-alert-title">Lorem Ipsum</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-default btn-ok" data-dismiss="modal" autofocus>{!INPUTSYSTEM_OK*}</button>
			</div>
		</div>
	</div>
</div>