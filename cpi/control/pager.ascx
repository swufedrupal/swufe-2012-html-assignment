<%@ Control Inherits="ghy.Pager" Language="c#" %>
<table width="100%" border="0" align="center" cellspacing="2" class="FormTable">
	<tr>
	  <td width="20%" align="center">����<font color="#FF0000"><%=AllCount%></font>ƪ����</td>
	  <td width="46%" align="center"><asp:LinkButton id="btnFirst" runat="server" Text="��ҳ" CommandArgument="First" OnClick="PagerButtonClick" />                                                            
			  &nbsp;
			  <asp:LinkButton id="btnPrev" runat="server" Text="��һҳ" CommandArgument="Prev" OnClick="PagerButtonClick" />                
			  &nbsp;
			  <asp:LinkButton id="btnNext" runat="server" Text="��һҳ" CommandArgument="Next" OnClick="PagerButtonClick" />                
			  &nbsp;
			  <asp:LinkButton id="btnLast" runat="server" Text="βҳ" CommandArgument="Last" OnClick="PagerButtonClick" />	  </td>
		<td width="34%" align="center">ÿҳ<%=PageSize%>ƪ �����ǵ� <font color="#FF0000"><%=NowPage+"/"+AllPageCount%></font> ҳ</td>
	</tr>
</table>
