<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="book_lost.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Book Lost
                    </h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                    </ul>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <form id="Form1" class="form-horizontal form-label-left" runat="server">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 420px">
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                        Enrollment Number<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txt_enroll" class="form-control col-md-7 col-xs-12" runat="server"
                                            placeholder="Enter Enrollment Number" MaxLength="15" required=""></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You Must Enter Enrollment Number" ForeColor="Red"
                                            ControlToValidate="txt_enroll" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="form-group">
                        <div>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                                Text=""></asp:Label>
                            <asp:Label ID="Label3" runat="server" ForeColor="#006699"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" Text="Submit"
                                OnClick="btn_submit_Click" />
                        </div>
                    </div>
                    <b><u>
                        <p>
                            * Field Is Mandatory
                        </p>
                    </u></b>
                    <asp:Panel ID="Panel1" runat="server" Visible="false" >
                        <table class="nav-justified">
                        <tr>
                        <td>
                        <div class="form-group">
                         <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                            Student Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:Label ID="lbl_sname" runat="server" Text=""></asp:Label>
                                        </div> 
                        </div>
                        </td>
                        </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                            Select Book <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:DropDownList ID="DropDownList1" class="form-control col-md-7 col-xs-12" runat="server"
                                                 DataTextField="book_name" DataValueField="book_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                            Book Amount <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:Label ID="lblbamount" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>
                                </td>
                            </tr>  
                        </table>
                        <div class="form-group">
                                <div>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                                        Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <asp:Button ID="btn_submit1" class="btn btn-success" runat="server" 
                                        Text="Pay" onclick="btn_submit1_Click"/>
                                </div>
                            </div>
                            <b><u>
                                <p>
                                    * Field Is Mandatory
                                </p>
                            </u></b>
                    </asp:Panel>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
