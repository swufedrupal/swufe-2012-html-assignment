<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ReplyBoard.ascx.cs" Inherits="Reply.ReplyBoard" %>
<hr style="width:325px; text-align:left" />
<div>
<table style="width:325px" class="FormTable">
<asp:repeater id="Repeater" runat="server">
    <ItemTemplate>
    </ItemTemplate>
</asp:repeater>
<tr>
    <td class="TD" colspan="2">
        <asp:LinkButton ID="More" runat="server" OnClick="MoreInfo" CssClass="link" Visible="false"></asp:LinkButton>
    </td>
    </tr>
<tr>
    <td class="TD">您的昵称：</td>
    <td class="TD">
        <asp:TextBox ID="CustomerName" runat="server" Width="225px" CssClass="INPUT"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="TD">您的评论：</td>
    <td class="TD">
        <asp:TextBox ID="Content" runat="server" TextMode="MultiLine"
        Width="225px" Height="120px" CssClass="INPUT"></asp:TextBox>
    </td>
</tr>
<tr>
    <td></td>
    <td style ="text-align :center">
        <asp:Button ID="submit" OnClick="Submit" runat="server" Text="提交" CssClass="button " />
        &nbsp;&nbsp;
        <asp:Button ID="cancel" OnClick="Cancel" runat="server" Text="重写" CssClass ="button " />
    </td>
</tr>
</table>
</div>