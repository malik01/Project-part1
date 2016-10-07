<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project_part1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class ="w3-container w3-animate-zoom">   
     <div class="jumbotron"> 
       <img height="236" src="./Assets/images/logo.png" width="304" class="img-rounded"/><br />
        <br />
        <br />
        </div>     
       </div>
   <div class ="w3-container w3-animate-opacity">   
        <a href="Projects.aspx"> 
      <span class=" glyphicon glyphicon-tasks logo"></span> <h1>Projects page</h1> 
    </a>
    <br />
    <br />
     <a href="Services.aspx">
      <span class=" glyphicon glyphicon-briefcase logo"></span> <h1>Services page</h1> 
    </a>
         </div>
             
</asp:Content>
