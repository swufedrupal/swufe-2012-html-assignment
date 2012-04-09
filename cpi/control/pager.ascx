<%@ Control Inherits="ghy.Pager" Language="c#" %>
<table width="100%" border="0" align="center" cellspacing="2" class="FormTable">
	<tr>
	  <td width="20%" align="center">共有<font color="#FF0000"><%=AllCount%></font>篇文章</td>
	  <td width="46%" align="center"><asp:LinkButton id="btnFirst" runat="server" Text="首页" CommandArgument="First" OnClick="PagerButtonClick" />                                                            
			  &nbsp;
			  <asp:LinkButton id="btnPrev" runat="server" Text="上一页" CommandArgument="Prev" OnClick="PagerButtonClick" />                
			  &nbsp;
			  <asp:LinkButton id="btnNext" runat="server" Text="下一页" CommandArgument="Next" OnClick="PagerButtonClick" />                
			  &nbsp;
			  <asp:LinkButton id="btnLast" runat="server" Text="尾页" CommandArgument="Last" OnClick="PagerButtonClick" />	  </td>
		<td width="34%" align="center">每页<%=PageSize%>篇 现在是第 <font color="#FF0000"><%=NowPage+"/"+AllPageCount%></font> 页</td>
	</tr>
</table>
