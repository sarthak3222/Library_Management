<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="ud_student.aspx.cs" Inherits="Admin_Default2" %>

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
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                        class="table table-striped table-bordered dt-responsive nowrap" DataSourceID="SqlDataSource1"
                        EmptyDataText="There are no data records to display." DataKeyNames="student_id">
                        <Columns>
                            <asp:BoundField DataField="student_id" HeaderText="Student Id" ReadOnly="True" SortExpression="student_id" />
                            <asp:BoundField DataField="enrollment_no" HeaderText="Enrollment Number" SortExpression="enrollment_no" />
                            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                            <asp:BoundField DataField="mob_no" HeaderText="Mobile Number" SortExpression="mob_no" />
                            <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                            <asp:BoundField DataField="sem" HeaderText="Semster" SortExpression="sem" />
                           
                            <%-- <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />--%>
                            <%--<asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../User/images/profile/" + Eval("image") %>'
                                        Height="50px" Width="50px" />
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM student_mster where student_id=@student_id" SelectCommand="SELECT [student_id], [enrollment_no], [first_name],[address], [mob_no], [email_id], [gender], [dob], [sem] FROM [student_mster] order by student_id"
                        UpdateCommand="UPDATE student_mster SET enrollment_no =@enrollment_no, first_name =@first_name, address =@address, mob_no =@mob_no, email_id =@email_id, gender =@gender, dob =@dob, sem =@sem where student_id=@student_id">
                        <DeleteParameters>
                            <asp:Parameter Name="student_id" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="enrollment_no" />
                            <asp:Parameter Name="first_name" />
                            <asp:Parameter Name="address" />
                            <asp:Parameter Name="mob_no" />
                            <asp:Parameter Name="email_id" />
                            <asp:Parameter Name="gender" />
                            <asp:Parameter Name="dob" />
                            <asp:Parameter Name="sem" />
                            <%--<asp:Parameter Name="pass" />--%>
                            <%--<asp:Parameter Name="img" />--%>
                            <asp:Parameter Name="student_id" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
