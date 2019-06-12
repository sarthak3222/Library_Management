<%@ Page Title="" Language="C#" MasterPageFile="~/User/M2.master" AutoEventWireup="true" CodeFile="change_pass.aspx.cs" Inherits="User_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container" style="width="50%">
        <form id="Form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
                    <asp:TextBox ID="txtcurrentpass" runat="server"  placeholder="Current Password" TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="txtnewpass" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                    <asp:PasswordStrength ID="txtnewpass_PasswordStrength" 
            runat="server" Enabled="True" TargetControlID="txtnewpass" StrengthIndicatorType="BarIndicator" PrefixText="Strength:"
                                HelpStatusLabelID="lblhelp" PreferredPasswordLength="8" MinimumNumericCharacters="1"
                                MinimumSymbolCharacters="1" BarBorderCssClass="BarBorder" TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;
AverageStrength;GoodStrength;ExcellentStrength"> 
        </asp:PasswordStrength>
                   <asp:TextBox ID="txtreenter" runat="server" placeholder="Re-Enter New Password" TextMode="Password"></asp:TextBox>
                   <br /><asp:Label ID="lblhelp" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
<br />
               <asp:Button ID="btn_change" class="btn" runat="server" Text="Change" 
                        onclick="btn_change_Click" />
        </form>
        <!--/.vanilla-form -->
    </div>

</asp:Content>

