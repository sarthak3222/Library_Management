<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="book_issue.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Book Issue </h2>
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
                                                    <asp:TextBox ID="txt_enroll" class="form-control col-md-7 col-xs-12" runat="server" 
                                                            placeholder="Enter Enrollment Number" MaxLength="15"></asp:TextBox>
                                                    </div>
                                                 </div>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td>
                                             <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Semster <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control col-md-7 col-xs-12">
                            
                                                        <asp:ListItem Value="1">1st</asp:ListItem>
                                                        <asp:ListItem Value="2">2nd</asp:ListItem>
                                                        <asp:ListItem Value="3">3rd</asp:ListItem>
                                                        <asp:ListItem Value="4">4th</asp:ListItem>
                                                        <asp:ListItem Value="5">5th</asp:ListItem>
                                                        <asp:ListItem Value="6">6th</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList3" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                              </div>
                                        </td>
                                    </tr>
                                 
                                     <tr>
                                              <td style="width: 420px">
                                               <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Select Publication <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                                        class="form-control col-md-7 col-xs-12" DataSourceID="publication" 
                                                      DataTextField="pub_name" DataValueField="pub_id" AutoPostBack="true" 
                                                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="publication" runat="server" 
                                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                      SelectCommand="SELECT * FROM [pub_mster]"></asp:SqlDataSource>
                                                </div>
                                              </div>
                                              </td>
                                      </tr>
                                      <tr>
                                                <td>
                                                      <div class="form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Select Book <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <asp:DropDownList ID="DropDownList1" class="form-control col-md-7 col-xs-12" runat="server" DataSourceID="book" 
                                                              DataTextField="book_name" DataValueField="book_id">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="book" runat="server" 
                                                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                              SelectCommand="SELECT * FROM [book_mster] WHERE ([pub_id] = @pub_id)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="DropDownList2" Name="pub_id" 
                                                                        PropertyName="SelectedValue" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                              
                                                        </div>
                                                      </div>
                                                </td>
                                       </tr>
                                </table>
                                <div class="form-group">
                                    <div >
                                        <asp:Label ID="Label2" runat="server"  Font-Bold="True" 
                                        Font-Size="Small" ForeColor="Red" Text=""></asp:Label>
                                        <asp:Label ID="Label3" runat="server" ForeColor="#006699"></asp:Label>
                                    </div> 
                                </div> 
                                 
                               <div class="form-group">
                                      <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" 
                                                 Text="Submit" onclick="btn_submit_Click"  />
                                       </div>
                                </div>

                                      <b><u><p>* Field Is Mandatory
                                          </p></u></b>
    
                                <asp:Panel ID="Panel1" runat="server" Visible="false" >
                      <%--<asp:Label ID="book_details" runat="server"  Visible="false"  Text="Book Details" Font-Size="Large" ></asp:Label>--%>
                       
                                     <div class="x_title">
                                        <h2><br />Book Details </h2>
                                       </div>
                                            <br />
                                                <br />
                                                <br />

                                    <div class="form-group">
                                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                                            class="control-label col-md-3 col-sm-3 col-xs-12" Font-Bold="True" 
                                            Font-Italic="False" Font-Overline="False" Font-Size="Medium" 
                                            Font-Strikeout="False" Font-Underline="True" ForeColor="Blue" >Check Available</asp:LinkButton>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="lbl_books" runat="server" 
                                               class="control-label col-md-3 col-sm-3 col-xs-12" Font-Bold="True" 
                                               Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        </div> 
                                    </div> 
                                     <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"> Student Name <span>:</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:Label ID="lbl_sname"  runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" Text="" ></asp:Label>
                                        </div>
                                      </div>
                                     <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Total Quantity <span>:</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:Label ID="lbl_qty" runat="server" 
                                                class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" ></asp:Label>
                                        </div>
                                      </div>
                                     <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" >Availabel Quantity  <span>:</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:Label ID="lbl_availabel" runat="server" 
                                                class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" ></asp:Label>
                                        </div>
                                      </div>
                                     <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Rent Quantity <span>:</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:Label ID="lbl_rent" runat="server" 
                                                class="control-label col-md-3 col-sm-3 col-xs-12" Width="1px" ></asp:Label>
                                        </div>
                                      </div>
                                   <div class="form-group">
                                      <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <asp:Button ID="btn_issue" class="btn btn-success" runat="server" 
                                                 Text="Issue Book" onclick="btn_issue_Click"   />
                                       </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" 
                                        class="control-label col-md-3 col-sm-3 col-xs-12" Font-Bold="True" 
                                        Font-Size="Small" ForeColor="Red"></asp:Label>
                                </div> 
                     
                    </asp:Panel>
                    </form>
                    </div>
                    </div>
                 </div>
               </div> 
                         
</asp:Content>


