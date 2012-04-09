<%@ Control Inherits="ghy.Search" Language="c#" %>
<asp:Panel ID="panel_Board" Runat="server" Visible="False">
	<asp:DropDownList ID="search_Board" DataTextField="BoardName" DataValueField="BoardID" Runat="server"></asp:DropDownList>
</asp:Panel>
<select id="search_Type">
	<option value="title">Ó°Æ¬Ãû³Æ</option>
	<option value="content">Ó°Æ¬½éÉÜ</option>
	<option value="class3">°´Ó°ÐÇ¼ìË÷</option>
</select>
<input type="text" id="search_Text" onkeydown="fnKeyDown()">
<input type="button" onclick="fn_Search_Submit()" value="ËÑË÷" TABINDEX="-1">
<script language="javascript">
function fn_Search_Submit()
{
	var boardID = "";
	var board = document.getElementById("search_search_Board");
	if (board != null)
		boardID = board.value;
	else
		boardID = "<%=BoardID%>";
	
	var text = document.getElementById("search_Text").value;
	var searchType = document.getElementById("search_Type").value;	
	
	var web = "searchResult.aspx?BoardID=" + boardID + "&Type=" + searchType + "&Text=" + text;
	window.open(web);
}

function fnKeyDown()
{
	if(event.keyCode==13)
	{
		fn_Search_Submit();
	}
}
</script>