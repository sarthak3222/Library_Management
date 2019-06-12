<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="add_student.aspx.cs" Inherits="Admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Add Student
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
                            Enrollment Number <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtenroll_no" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter Enrollment Number" MaxLength="14"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtenroll_no_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtenroll_no">
                            </asp:FilteredTextBoxExtender>
                                <span class="fa fa-etsy form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You Must Enter Enrollment Number"
                                ForeColor="Red" ControlToValidate="txtenroll_no" Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="You Can Enter Only Digits"
                                ControlToValidate="txtenroll_no" Display="Dynamic" MaximumValue="9999999999999999"
                                MinimumValue="1000000000000000"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Student Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtsname" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter Student Name"></asp:TextBox>
                                <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="You Must Enter Student Name"
                                ForeColor="Red" ControlToValidate="txtsname" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Address <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtaddress" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
                                 <span class="fa fa-location-arrow form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="You Must Enter Address"
                                ForeColor="Red" ControlToValidate="txtaddress" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Contact No. <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtmob_no" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter Contact No." MaxLength="10"></asp:TextBox>
                                <span class="fa fa-phone form-control-feedback left" aria-hidden="true"></span>
                            <asp:FilteredTextBoxExtender ID="txtmob_no_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" TargetControlID="txtmob_no" FilterType="Numbers">
                            </asp:FilteredTextBoxExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="You Must Enter Contact No."
                                ForeColor="Red" ControlToValidate="txtmob_no" Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtmob_no"
                                ErrorMessage="You Must Enter Valid Number" ForeColor="Red" MaximumValue="9999999999"
                                MinimumValue="7000000000" Display="Dynamic"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            E-mail Id <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtemail" class="form-control has-feedback-left" runat="server"
                                placeholder="Enter E-mail"></asp:TextBox>
                                <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="You Must Enter E-mail ID "
                                ForeColor="Red" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                           Gender<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="M" Selected="true"> &nbsp Male</asp:ListItem>
                        <asp:ListItem Value="F"> &nbsp Female</asp:ListItem>
                    </asp:RadioButtonList>
                    </div>
                    </div> 
                    <%--<div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <label>
                            Gender *:</label>
                        <p>
                            M:
                            <input type="radio" class="flat" name="gender" id="genderM" value="M" checked=""
                                required />
                            F:
                            <input type="radio" class="flat" name="gender" id="genderF" value="F" />
                        </p>
                        </div> 
                    </div>--%>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Date Of Birth <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtdob" runat="server" class="form-control has-feedback-left" data-provide="datepicker-inline" placeholder="Select Date Of Birth"></asp:TextBox>
                            <span class="fa fa-calendar form-control-feedback left" aria-hidden="true" ></span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You Must Select DOB"
                                Display="Dynamic" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Semster <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control col-md-7 col-xs-12">
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
                            Profile Picture <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:FileUpload ID="ImgSrc" runat="server" class="form-control has-feedback-left"></asp:FileUpload>
                            <span class="fa fa-file-photo-o form-control-feedback left" aria-hidden="true"></span>
                        </div>
                    </div>
                    <asp:Label ID="lbl_sub" runat="server" Font-Bold="True" ForeColor="#006699"></asp:Label>
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
                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" 
                                Text="Submit" onclick="btn_submit_Click"/>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
