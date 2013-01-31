<%@ page import="wish.Wish" %>
 
<div class="fieldcontain ${hasErrors(bean: wishInstance, field: 'newlyweds', 'error')} required">
	<label for="newlyweds">
		<g:message code="wish.newlyweds.label" default="Newlyweds" />
		<span class="required-indicator"></span>
	</label>
	<g:select id="newlyweds" name="newlyweds.id" from="${wish.Newlyweds.list()}" optionKey="id" required="" value="${wishInstance?.newlyweds?.id}" class="many-to-one"/>
</div>
<div class="fieldcontain ${hasErrors(bean: wishInstance, field: 'fromwho', 'error')} required">
	<label for="fromwho">
		<g:message code="wish.fromwho.label" default="Fromwho" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fromwho" maxlength="13" required="" value="${wishInstance?.fromwho}" title="如:你的初恋" placeholder="如:你的初恋"/>
</div>
<div class="fieldcontain ${hasErrors(bean: wishInstance, field: 'toname', 'error')} required">
	<label for="toname">
		<g:message code="wish.toname.label" default="Toname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="toname" maxlength="13" required="" value="${session.newlyweds}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wishInstance, field: 'wish', 'error')} required">
	<label for="wish">
		<g:message code="wish.wish.label" default="Wish" />(限70字)
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="wish" maxlength="70" required="" rows="8" value="${wishInstance?.wish}" placeholder="不多于70字"/>
</div>

