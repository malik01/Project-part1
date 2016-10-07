<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project_part1.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class ="w3-container w3-animate-zoom">
    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                    <h2>Personal Tagline</h2>
                </a>
            </div>
        </div>
        <div id="collapse1" class="panel-collapse collapse in">
            <div class="panel-body">
                Web And App Developer: I write apps that helps user in everday use and make 
their life easy. Also helping people and companies in building their online 
stores and boosting their sales. 
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                <h2>Mission Statement</h2>
            </a>
        </div>

        <div id="collapse2" class="panel-collapse collapse">
            <div class="panel-body">
                <p>
                    I as an app developer get to see many apps with an alien UI that is very hard 
to understand and can get frustrating, so as being undergone these circumstances 
i want the other users to not undergo the same process and make things a little 
easier for them
                </p>


                <p>
                    I am a gamer and want to be a game devaloper for companies like 
Ubisoft,Bethsda,SONY or EA.
                </p>
                <p>
                    As a Web developer i want to make professional looking websites with an 
intuitive and an easy to use design rather than going here and there to add just 
an item into the cart.
                </p>
                <p>
                    Usually when visiting websites they seem to be dull and not very interactive, 
so i want to change that and make a really interactive website thats pleasing to 
the eye and very easy to use
                </p>

            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                <h2>BIO</h2>
            </a>
        </div>
        <div id="collapse3" class="panel-collapse collapse">
            <div class="panel-body">
                <ul>
                    <li>Software engineering technology CO-OP 3rd year student</li>
                    <li>Student of Centennial College Sep 2015 – Sep 2018</li>
                    <li>Exceptional sales and customer service skills</li>
                    <li>Fast learner of technology</li>
                    <li>Excellent team player with ability to work under minimum supervision</li>
                    <li>Web design using HTML5,CSS,Javascript,PHP,ASP.NET</li>
                    <li>Database management using SQL,PL/SQL</li>
                    <li>Programming languages Java ,C sharp(C#)</li>
                    <li>Extensive knowledge of Microsoft products like Spreadsheets, Excel, 
	Project, Visio, Visual studio.</li>
                </ul>
            </div>
        </div>
    </div>
        </div>
    <p>
        <br />
        <br />
    </p>



</asp:Content>
