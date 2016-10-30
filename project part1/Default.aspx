<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project_part1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- div class="container" style="font-family: 'Bungee Inline', cursive; font-size:small;" --%>
    <div class="container" style="font-family: hammersmith-one, sans-serif;">
        <div class="table-responsive">
            <div class="well">
            <table class="table table-condensed">
                <thead hidden="hidden">
                    <tr>
                        <th>Game</th>
                        <th>Game</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:GridView ID="GameInfoGridView1" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed"
                                DataKeyNames=" WeekNumber">
                                <Columns>
                                    <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                    <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                                    <asp:TemplateField HeaderText="Total Scores" Visible="true">
                                        <ItemTemplate>
                                            <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square fa-lg'></i> Edit"
                                        NavigateUrl="~/AddResult.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                                        runat="server" DataNavigateUrlFields="WeekNumber"
                                        DataNavigateUrlFormatString="AddResult.aspx?WeekNumber={0}" />
                                    <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-minus-square fa-lg'></i> Delete"
                                        ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamInfo1GridView1" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="TeamName" HeaderText="First Team's Name" Visible="true" />
                                    <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamResult1GridView1" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                                    <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                                    <%--                               
                                <asp:TemplateField HeaderText="Team 1 Results" Visible="true" />                               
                                <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" />
                                <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                                    --%>
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamInfo2GridView1" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="TeamName" HeaderText="First Team's Opponent Name" Visible="true" />
                                    <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamResult2GridView1" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <%--
                                <asp:TemplateField HeaderText="Team 2 Results" Visible="true" />                                
                                    --%>
                                    <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                                    <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                                </Columns>
                            </asp:GridView>
                            
                        </td>
                        <div class="well">
                        <td style="border: none"></td>
                        <td>
                            <asp:GridView ID="GameInfoGridView2" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="WeekNumber" HeaderText="Week" Visible="true" />
                                    <asp:BoundField DataField="Spectator" HeaderText="Spectators" Visible="true" />
                                    <asp:TemplateField HeaderText="Total Scores" Visible="true">
                                        <ItemTemplate>
                                            <%# Convert.ToInt32(Eval("TeamScore1")) + Convert.ToInt32(Eval("TeamScore2"))%>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square fa-lg'></i> Edit"
                                        NavigateUrl="~/AddResult.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                                        runat="server" DataNavigateUrlFields="WeekNumber"
                                        DataNavigateUrlFormatString="AddResult.aspx?WeekNumber={0}" />
                                    <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-minus-square fa-lg'></i> Delete"
                                        ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamInfo1GridView2" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="TeamName" HeaderText="Second Team's Name" Visible="true" />
                                    <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamResult1GridView2" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="TeamScore1" HeaderText="Total Scored Points" Visible="true" />
                                    <asp:BoundField DataField="TeamScore2" HeaderText="Total Allowed Points" Visible="true" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamInfo2GridView2" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="TeamName" HeaderText="Second Team's Opponent Name" Visible="true" />
                                    <asp:BoundField DataField="TeamDescription" HeaderText="Team Description" Visible="true" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="TeamResult2GridView2" runat="server" AutoGenerateColumns="false"
                                CssClass="table table-striped table-hover table-condensed">
                                <Columns>                                   
                                    <asp:BoundField DataField="TeamScore2" HeaderText="Total Scored Points" Visible="true" />
                                    <asp:BoundField DataField="TeamScore1" HeaderText="Total Allowed Points" Visible="true" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                  <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <asp:LinkButton ID="link_week_1" runat="server" OnClick="link_week_1_Click">Week 1</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_2" runat="server" OnClick="link_week_2_Click">Week 2</asp:LinkButton>

                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_3" runat="server" OnClick="link_week_3_Click">Week 3</asp:LinkButton>

                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_4" runat="server" OnClick="link_week_4_Click">Week 4</asp:LinkButton>

                    </li>
                </ul>
            </div>
        </div>
                </tbody>
            </table>
        </div>
    </div>
    </div>
</asp:Content>
