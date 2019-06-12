<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="add_publication.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Publication </h2>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Publication Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="txtpubname" class="form-control col-md-7 col-xs-12"  runat="server" placeholder="Enter Publication" required=""></asp:TextBox>
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

