<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="add_book.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Add Book
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
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Book Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtbookname" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter Book Name"></asp:TextBox>
                            <span class="fa fa-book form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You Must Enter Book Name"
                                ForeColor="Red" ControlToValidate="txtbookname" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Publication <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control col-md-7 col-xs-12"
                                DataSourceID="publication" DataTextField="pub_name" DataValueField="pub_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="publication" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT * FROM [pub_mster]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Edition <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtedition" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter Book Edition"></asp:TextBox>
                            <span class="fa fa-list form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You Must Enter Edition"
                                ForeColor="Red" ControlToValidate="txtedition" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Author <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control col-md-7 col-xs-12"
                                DataSourceID="author" DataTextField="author_name" DataValueField="author_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="author" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT * FROM [author_mster]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <asp:UpdatePanel ID="updatepanel1" runat="server">
                        <ContentTemplate>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                    Semester <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control col-md-7 col-xs-12"
                                        AutoPostBack="true">
                                        <asp:ListItem Value="1">1st</asp:ListItem>
                                        <asp:ListItem Value="2">2nd</asp:ListItem>
                                        <asp:ListItem Value="3">3rd</asp:ListItem>
                                        <asp:ListItem Value="4">4th</asp:ListItem>
                                        <asp:ListItem Value="5">5th</asp:ListItem>
                                        <asp:ListItem Value="6">6th</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                    Subject <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <asp:DropDownList ID="ddlsub" runat="server" class="form-control col-md-7 col-xs-12"
                                        DataSourceID="subject" DataTextField="sub_name" DataValueField="sub_id">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="subject" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        SelectCommand="SELECT * FROM [subject_mster] WHERE ([sem] = @sem)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList3" Name="sem" PropertyName="SelectedValue"
                                                Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Quantity <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtqty" class="form-control has-feedback-left" runat="server" placeholder="Enter Quantity"></asp:TextBox>
                            <span class="fa fa-plus form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="You Must Enter Quantity"
                                ForeColor="Red" ControlToValidate="txtqty" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            price <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtprice" class="form-control has-feedback-left" AutoPostBack="true"
                                runat="server" placeholder="Enter price" OnTextChanged="txtprice_TextChanged"></asp:TextBox>
                            <span class="fa fa-inr form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="You Must Enter Price"
                                ForeColor="Red" ControlToValidate="txtprice" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Total Amount <span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </div>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#006699"></asp:Label>
                    <b><u>
                        <p>
                            * Field Is Mandatory
                        </p>
                    </u></b>
                    <br />
                    <div class="ln_solid">
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" Text="Submit"
                                OnClick="btn_submit_Click" />
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
