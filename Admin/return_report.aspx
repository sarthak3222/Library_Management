<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="return_report.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
        <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Return Report</h2> 
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <div class="table-responsive">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <table class="table table-striped jambo_table bulk_action dataTable">
                                <thead>
                                    <tr>
                                        <th>
                                            Return ID
                                        </th>
                                        <th>
                                            Enrollment Number
                                        </th>
                                        <th>
                                            Book Name
                                        </th>
                                        <th>
                                            Issue Date
                                        </th>
                                        <th>
                                            Return Date
                                        </th>
                                        <th>
                                            Penalty Status
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("return_id") %>
                                </td>
                                <td>
                                    <%#Eval("enrollment_no") %>
                                </td>
                                <td>
                                    <%#Eval("book_name") %>
                                </td>
                                <td>
                                    <%#Eval("issue_date") %>
                                </td>
                                <td>
                                    <%#Eval("return_date") %>
                                </td>
                                <td>
                                    <%#Eval("penalty_status") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> </table>
                        </FooterTemplate>
                    </asp:Repeater>
                     <%-- <asp:GridView ID="GridView1" runat="server" 
                          class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" 
                        EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="return_id" HeaderText="return_id" ReadOnly="True" 
                                SortExpression="return_id"/>
                            <asp:BoundField DataField="enrollment_no" HeaderText="enrollment_no" 
                                SortExpression="enrollment_no" />
                            <asp:BoundField DataField="book_id" HeaderText="book_id" 
                                SortExpression="book_id" />
                            <asp:BoundField DataField="issue_date" HeaderText="issue_date" 
                                SortExpression="issue_date" />
                            <asp:BoundField DataField="return_date" HeaderText="return_date" 
                                SortExpression="return_date" />
                            <asp:BoundField DataField="penalty_status" HeaderText="penalty_status" 
                                SortExpression="penalty_status" />
                        </Columns>
                    </asp:GridView>--%>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="select r.return_id,r.enrollment_no,b.book_name,r.issue_date,r.return_date,r.penalty_status from return_mster as r inner join book_mster as b on r.book_id=b.book_id order by r.return_id">
                    </asp:SqlDataSource>
                
					</div> 
                  </div>
                </div>
        </div>
    </form>
</asp:Content>

