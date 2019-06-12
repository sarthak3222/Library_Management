<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="panalty.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Panalty </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="Form1" class="form-horizontal form-label-left" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="width: 420px">
            <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Enrollment Number<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txt_enroll" class="form-control col-md-7 col-xs-12" runat="server" placeholder="Enter Enrollment Number"></asp:TextBox>
                        </div>
                      </div>
                </td>
                </tr>
    </table>
                                  <div class="form-group">
                                    <div >
                                        <asp:Label ID="Label1" runat="server"  Font-Bold="True" 
                                        Font-Size="Small" ForeColor="Red" Text=""></asp:Label>
                                    </div> 
                                </div> 
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" 
                                Text="Submit" />
                        </div>
                      </div> 
                      <b><u><p>* Field Is Mandatory
                      </p></u></b>
                 <asp:Panel ID="Panel1" runat="server" Visible="false" >
                      <%--<asp:Label ID="book_details" runat="server"  Visible="false"  Text="Book Details" Font-Size="Large" ></asp:Label>--%>
                    <div class="x_title">
                    <h2><br />Panalty </h2>
                  </div>
                  <br />
                  <br />
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Student Name<span>:</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:Label ID="lbl_sname" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" ></asp:Label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Book Name<span>:</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:DropDownList ID="DropDownList1" class="form-control col-md-7 col-xs-12" 
                                runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" >Days  <span>:</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:Label ID="lbl_days" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px"  ></asp:Label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Issue Date <span>:</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:Label ID="lbl_issuedate" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" ></asp:Label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Panalty Status <span>:</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:Label ID="lbl_panalty" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" ></asp:Label>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btn_return" class="btn btn-success" runat="server" 
                                Text="Return" />
                        </div>
                      </div> 
                       <div class="form-group">
                                    <div >
                                        <asp:Label ID="Label2" runat="server"  Font-Bold="True" 
                                        Font-Size="Small" ForeColor="Red" Text=""></asp:Label>
                                    </div> 
                                </div> 
                    </asp:Panel>

                      </form>
    </div> 
    </div>
    </div> 
    </div>

</asp:Content>

