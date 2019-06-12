<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="author_report.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Author Report</h2> 
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
                                            Author ID
                                        </th>
                                        <th>
                                            Author Name
                                        </th>
                                        </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("author_id") %>
                                </td>
                                <td>
                                    <%#Eval("author_name") %>
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
                          EmptyDataText="There are no data records to display." 
                          DataKeyNames="author_id">
                          <Columns>
                              <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" 
                                  SortExpression="author_id" />
                              <asp:BoundField DataField="author_name" HeaderText="author_name" 
                                  SortExpression="author_name" />
                          </Columns>
                      </asp:GridView>--%>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [author_id], [author_name] FROM [author_mster]" 
                          DeleteCommand="DELETE FROM author_mster Where author_id=@author_id" 
                          UpdateCommand="UPDATE author_mster SET author_name =@author_name where author_id=@author_id">
                          <DeleteParameters>
                              <asp:Parameter Name="author_id" />
                          </DeleteParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="author_name" />
                              <asp:Parameter Name="author_id" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                    
					</div>
                  </div>
                </div>
        </div>
    </form>

</asp:Content>

