<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="issue_report.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
        <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Issue Report</h2> 
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
                                            Issue ID
                                        </th>
                                        <th>
                                            Enrollment Number
                                        </th>
                                        <th>
                                            Semester
                                        </th>
                                        <th>
                                            Book Name
                                        </th>
                                        <th>
                                            Publication Name
                                        </th>
                                        <th>
                                            Issue Date
                                        </th>
                                        <th>
                                            Return Date
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("issue_id") %>
                                </td>
                                <td>
                                    <%#Eval("enrollment_no") %>
                                </td>
                                <td>
                                    <%#Eval("sem") %>
                                </td>
                                <td>
                                    <%#Eval("book_name") %>
                                </td>
                                <td>
                                    <%#Eval("pub_name") %>
                                </td>
                                <td>
                                   <%--<%#Eval("issue_date") %>--%>
                                    <%# Eval("issue_date") %>
                                </td>
                                <td>
                                   <%#Eval("return_date") %>
                                    <%--<%#((DateTime)Eval("return_date")).ToString("dd-mm-yyyy")%>--%>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> </table>
                        </FooterTemplate>
                    </asp:Repeater>
                      
					  <%--<asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="False" 
                          DataSourceID="SqlDataSource1" 
                          EmptyDataText="There are no data records to display.">
                          <Columns>
                              <asp:BoundField DataField="issue_id" HeaderText="issue_id" ReadOnly="True" 
                                  SortExpression="issue_id" />
                              <asp:BoundField DataField="enrollment_no" HeaderText="enrollment_no" 
                                  SortExpression="enrollment_no" />
                              <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                              <asp:BoundField DataField="book_id" HeaderText="book_id" 
                                  SortExpression="book_id" />
                              <asp:BoundField DataField="publication_id" HeaderText="publication_id" 
                                  SortExpression="publication_id" />
                              <asp:BoundField DataField="issue_date" HeaderText="issue_date" 
                                  SortExpression="issue_date" />
                              <asp:BoundField DataField="return_date" HeaderText="return_date" 
                                  SortExpression="return_date" />
                          </Columns>
                      </asp:GridView>--%>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                          SelectCommand="SELECT        i.issue_id, i.enrollment_no,i.sem ,b.book_name, p.pub_name,  i.issue_date, i.return_date
FROM            issue_mster AS i INNER JOIN
                         book_mster AS b ON i.book_id = b.book_id INNER JOIN
                         pub_mster AS p ON i.pub_id = p.pub_id order by i.issue_id">
                      </asp:SqlDataSource>
                      
					</div> 
                  </div>
                </div>
        </div>
    </form>
</asp:Content>

