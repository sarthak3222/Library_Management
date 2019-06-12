<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="student_report.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>
                    Student Report</h2>
                <div class="clearfix">
                </div>
            </div>
            <div class="x_content">
            
                <div class="table-responsive">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <table class="table table-striped jambo_table bulk_action dataTable">
                                <thead>
                                    <tr>
                                        <th>
                                            Student ID
                                        </th>
                                        <th>
                                            Enrollment Number
                                        </th>
                                        <th>
                                            First Name
                                        </th>
                                        <th>
                                            Address
                                        </th>
                                        <th>
                                            Contact Number
                                        </th>
                                        <th>
                                            Email
                                        </th>
                                        <th>
                                            Gender
                                        </th>
                                        <th>
                                            Date Of Birth
                                        </th>
                                        <th>
                                            Semester
                                        </th>
                                        <th>
                                            Image
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("student_id") %>
                                </td>
                                <td>
                                    <%#Eval("enrollment_no") %>
                                </td>   
                                <td>
                                    <%#Eval("first_name") %>
                                </td>
                                <td>
                                    <%#Eval("address") %>
                                </td>
                                <td>
                                    <%#Eval("mob_no") %>
                                </td>
                                <td>
                                    <%#Eval("email_id") %>
                                </td>
                                <td>
                                    <%#Eval("gender") %>
                                </td>
                                <td>
                                    <%#Eval("dob")%>
                                </td>
                                <td>
                                    <%#Eval("sem") %>
                                </td>
                                <td>
                                    <asp:Image ImageUrl='<%# "../User/images/profile/" + Eval("image") %>' ID="img1"
                                        runat="server" Height="50px" Width="50px"></asp:Image>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT [student_id], [enrollment_no], [first_name], [address], [mob_no], [email_id], [gender], [dob], [sem], [image] FROM [student_mster] order by student_id">
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
