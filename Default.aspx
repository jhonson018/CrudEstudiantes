<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>Agregar Estudiante</h2>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="EstudianteID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="101px" Width="383px" DefaultMode="Insert">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="EstudianteID" HeaderText="EstudianteID" ReadOnly="True" SortExpression="EstudianteID" />
                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Estudiantes] WHERE [EstudianteID] = @original_EstudianteID AND (([Nombres] = @original_Nombres) OR ([Nombres] IS NULL AND @original_Nombres IS NULL)) AND (([Apellidos] = @original_Apellidos) OR ([Apellidos] IS NULL AND @original_Apellidos IS NULL)) AND (([Edad] = @original_Edad) OR ([Edad] IS NULL AND @original_Edad IS NULL)) AND (([Genero] = @original_Genero) OR ([Genero] IS NULL AND @original_Genero IS NULL))" InsertCommand="INSERT INTO [Estudiantes] ([EstudianteID], [Nombres], [Apellidos], [Edad], [Genero]) VALUES (@EstudianteID, @Nombres, @Apellidos, @Edad, @Genero)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Estudiantes]" UpdateCommand="UPDATE [Estudiantes] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [Edad] = @Edad, [Genero] = @Genero WHERE [EstudianteID] = @original_EstudianteID AND (([Nombres] = @original_Nombres) OR ([Nombres] IS NULL AND @original_Nombres IS NULL)) AND (([Apellidos] = @original_Apellidos) OR ([Apellidos] IS NULL AND @original_Apellidos IS NULL)) AND (([Edad] = @original_Edad) OR ([Edad] IS NULL AND @original_Edad IS NULL)) AND (([Genero] = @original_Genero) OR ([Genero] IS NULL AND @original_Genero IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_EstudianteID" Type="Int32" />
                        <asp:Parameter Name="original_Nombres" Type="String" />
                        <asp:Parameter Name="original_Apellidos" Type="String" />
                        <asp:Parameter Name="original_Edad" Type="Int32" />
                        <asp:Parameter Name="original_Genero" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EstudianteID" Type="Int32" />
                        <asp:Parameter Name="Nombres" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="Genero" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombres" Type="String" />
                        <asp:Parameter Name="Apellidos" Type="String" />
                        <asp:Parameter Name="Edad" Type="Int32" />
                        <asp:Parameter Name="Genero" Type="String" />
                        <asp:Parameter Name="original_EstudianteID" Type="Int32" />
                        <asp:Parameter Name="original_Nombres" Type="String" />
                        <asp:Parameter Name="original_Apellidos" Type="String" />
                        <asp:Parameter Name="original_Edad" Type="Int32" />
                        <asp:Parameter Name="original_Genero" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <style>
        Columns,td,th    {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;

  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 150%;
}
            </style>
            <h2>Listado de Estudiantes<asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="Horizontal" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" DataKeyNames="EstudianteID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns  >
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="EstudianteID" HeaderText="EstudianteID" ReadOnly="True" SortExpression="EstudianteID" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </h2>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
