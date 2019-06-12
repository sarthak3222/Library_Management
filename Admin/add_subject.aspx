<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="add_subject.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Subject </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="Form1" class="form-horizontal form-label-left" runat="server">
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Semester <span class="required">*</span>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Subject Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtsubname" class="form-control col-md-7 col-xs-12" runat="server" placeholder="Enter Subject" required=""></asp:TextBox>
                            <%--<asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="You Must Enter Subject" ControlToValidate="txtsubname" 
                                ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                      <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                      </div> 
                      </div> 
                      <b><u><p>* Field Is Mandatory
                      </p></u></b>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" 
                                Text="Submit" onclick="btn_submit_Click" />
                        </div>
                      </div>
                            
                    </form>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>

