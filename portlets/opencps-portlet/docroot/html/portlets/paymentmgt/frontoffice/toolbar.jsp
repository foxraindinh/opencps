<%@page import="org.opencps.paymentmgt.util.PaymentMgtUtil"%>
<%@page import="com.liferay.portal.kernel.language.LanguageUtil"%>
<%@page import="javax.portlet.PortletURL"%>
<%@page import="com.liferay.portal.kernel.log.LogFactoryUtil"%>
<%@page import="com.liferay.portal.kernel.log.Log"%>
<%
/**
 * OpenCPS is the open source Core Public Services software
 * Copyright (C) 2016-present OpenCPS community
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
%>
<%@ include file="../init.jsp"%>
<%
	PortletURL searchUrl = renderResponse.createRenderURL();
%>
<aui:nav-bar cssClass="custom-toolbar">
	<aui:nav id="toolbarContainer"
		cssClass="nav-display-style-buttons pull-left">

	</aui:nav>
	<aui:nav-bar-search cssClass="pull-left" style="width: 98%">
		<div class="form-search">
			<aui:form action="<%= searchUrl %>" method="post" name="fm">
				<div class="toolbar_search_input" style="width: 98%">
					<aui:row>
						<aui:col width="35">
							<aui:select name="paymentStatus" label="">
								<aui:option value="-1">
									<liferay-ui:message key="all-status"></liferay-ui:message>
								</aui:option>
								<aui:option value="<%= PaymentMgtUtil.PAYMENT_STATUS_ON_PROCESSING %>">
									<liferay-ui:message key="on-processing"></liferay-ui:message>
								</aui:option>
								<aui:option value="<%= PaymentMgtUtil.PAYMENT_STATUS_REQUESTED %>">
									<liferay-ui:message key="requested"></liferay-ui:message>
								</aui:option>
								<aui:option value="<%= PaymentMgtUtil.PAYMENT_STATUS_CONFIRMED %>">
									<liferay-ui:message key="confirmed"></liferay-ui:message>
								</aui:option>
								<aui:option value="<%= PaymentMgtUtil.PAYMENT_STATUS_APPROVED %>">
									<liferay-ui:message key="approved"></liferay-ui:message>
								</aui:option>
								<aui:option value="<%= PaymentMgtUtil.PAYMENT_STATUS_REJECTED %>">
									<liferay-ui:message key="rejected"></liferay-ui:message>
								</aui:option>
							</aui:select>							
						</aui:col>
						<aui:col width="65">
							<label> <liferay-ui:message key="keywords" />
							</label>
							<liferay-ui:input-search id="keywords" name="keywords"
								title='<%= LanguageUtil.get(portletConfig, locale, "keywords") %>'
								placeholder="<%= LanguageUtil.get(portletConfig, locale, \"keywords\") %>" />
						</aui:col>
					</aui:row>
				</div>
			</aui:form>
		</div>
	</aui:nav-bar-search>
</aui:nav-bar>
<%!
	private Log _log = LogFactoryUtil.getLog("html.portlets.paymentmgt.frontoffice.toolbar.jsp");
%>