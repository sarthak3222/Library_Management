<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyCaptcha.ascx.cs" Inherits="MyCaptcha" EnableViewState="true" %>
<style type="text/css">

</style>
<table >
    <tr>
        <td>
            <asp:Image ID="ImgCaptcha" runat="server" />
        </td>
    </tr>
    <tr>
        <td valign="middle">
        
            <asp:Label ID="LblMsg" runat="server" Text="Enter the above code here:"></asp:Label><br />
            
            <asp:TextBox ID="TxtCpatcha" runat="server" CssClass="text" Text="" Width="150px" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic"  runat="server" ErrorMessage="You Must Enter Captcha" ForeColor="Red" ControlToValidate="TxtCpatcha"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:LinkButton ID="btnTryNewWords" runat="server" Font-Names="Tahoma" 
                Font-Size="Smaller" onclick="btnTryNewWords_Click" 
                CausesValidation="False">Can&#39;t read? Try different 
            words.</asp:LinkButton>
        </td>
    </tr>
</table>