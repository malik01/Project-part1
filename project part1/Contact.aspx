<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project_part1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="conatainer"> 
        <div class="row"> 
             <div class="col-md-offset-4 col-md-6"> 
               <div class ="w3-container w3-animate-left">
                   <h1>Contact Me</h1> 
                    Email : shahzaib.malik39@gmail.com<br />
                    Work Address: Centennial College,940 Progress Ave,ON,Canada<br />
                    Phone Number: (647)572-2550
 <br />
                   </div>
                 <br />
                 <br />
                 <div class="well">
                 <h2>Form for sending your details to the developer</h2>
                 <div class="form-group"> 
                     <label for="FirstNameTextBox">First Name</label> 
                     <asp:TextBox CssClass="form-control" ID="FirstNameTextBox" runat="server" required="true"></asp:TextBox> 
                 </div> 
                 <div class="form-group"> 
                     <label for="LastNameTextBox">Last Name</label> 
                     <asp:TextBox CssClass="form-control" ID="LastNameTextBox" runat="server" required="true"></asp:TextBox> 
                 </div> 
                 <div class="form-group"> 
                     <label for="EmailTextBox">Email</label> 
                     <asp:TextBox TextMode="Email" CssClass="form-control" ID="EmailTextBox" runat="server" required="true"></asp:TextBox> 
                 </div> 
                 <div class="form-group"> 
                     <label for="ContactNumberTextBox">Contact Number</label> 
                     <asp:TextBox TextMode="Phone" CssClass="form-control" ID="ContactNumberTextBox" runat="server" required="true"></asp:TextBox> 
                 </div> 
 
                    <a href="Default.aspx">
                 <asp:Button ID="SendButton" CssClass="btn btn-primary btn-lg" runat="server" Text="Send" /> 
                </a>
 
             </div> 
         </div> 
     </div> 
    </div>

</asp:Content>
