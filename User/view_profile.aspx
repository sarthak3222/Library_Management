<%@ Page Title="" Language="C#" MasterPageFile="~/User/M2.master" AutoEventWireup="true"
    CodeFile="view_profile.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <div class="col-sm-6">
        <div class="pricing panel" align="center">
            <div class="panel-heading" align="center">
                <%--<h3 class="panel-title">Profile</h3>--%>
                <div class="price">
                    <span class="price-value">Profile</span>
                </div>
            </div>
            <!--/.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action dataTable" align="center">
                        <tbody>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label7" runat="server" Text="Profile Picture"></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label1" runat="server" Text="Enrollment Number"></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblenrollment_no" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label3" runat="server" Text="Contact Number "></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblmob_no" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label4" runat="server" Text="E-mail "></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label5" runat="server" Text="Date Of Birth "></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lbldob" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="Right">
                                    <strong>
                                        <asp:Label ID="Label6" runat="server" Text="Semester "></asp:Label></strong>
                                </td>
                                <td>
                                    :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblsem" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            <!--/.panel-body -->
            <!--/.pricing -->
        </div>
    </div>
    </div>
    </form>
</asp:Content>
