<div class="navbar navbar-fixed-top topnavpad" >
	<div class="navbar-inner topnavpad">
		<div class="container topnavpad" style="width:100%;">
			<a href="/wish/" class='brand'>
				<b style="color: red;">&nbsp;&nbsp;&nbsp;&nbsp;${session.newlyweds}大婚祝福</b>
			</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li><a href="/wish/">共收到&nbsp;<b style="color: red;">${session.wishcounts}</b>&nbsp;条祝福
					</a></li>
					<li><g:link action="create" style="color: red;font-weight: bolder;">
							<g:message code="wish.new.label" />
						</g:link></li>
				</ul>
			</div>
		</div>
	</div>
</div>