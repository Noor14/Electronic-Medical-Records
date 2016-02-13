<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="EMR.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor</title>
<link rel="stylesheet" type="text/css" href="css/doctor.css" />
	<script type="text/javascript" src="jquery/JavaScript.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

        $(".accordion h3:first").addClass("active");
        $(".accordion p:not(:first)").hide();

        $(".accordion h3").click(function () {
            $(this).next("p").slideToggle("slow")
            .siblings("p:visible").slideUp("slow");
            $(this).toggleClass("active");
            $(this).siblings("h3").removeClass("active");
        });

        $('#add').click(function () {

            $('#create-patient').toggle();
            $('#search-record,#old-patient').hide();
            $(this).blur();


        });

        $('#old').click(function () {

            $('#old-patient').toggle();
            $('#search-record,#create-patient').hide();
            $(this).blur();


        });

        $('#search').click(function () {

            $('#search-record').toggle();
            $('#old-patient,#create-patient').hide();
            $(this).blur();


        });


    });
</script>

</head>
<body>
    <form id="form1" runat="server">
    
        <div id="header">
	<div class="main">
	

	<div id="logo">
        <asp:Image ID="Image1" runat="server" src="images/emr.png"/></div>
<div id="info"><a href="#">Home</a><a href="#">Setting</a><a href="#">Logout</a></div>
    <div id="name">
        <asp:Label ID="registerid" runat="server" Text="Label"></asp:Label><br/>
        <asp:Label ID="FullName" runat="server" Text="Label"></asp:Label>
    </div>
    <div id="pic"></div>


<div style="clear:both;"></div>

	</div>


</div>



<div id="body">

	<div class="main">
	<div id="sidebar" class=" distance">
		

	
<div class="accordion">
<h3>Doctor</h3>
<p>
<a href="#" id="add" onclick="return false">Add Patient</a>
<a href="#" id="old" onclick="return false">Old Patient</a>
</p>

<h3 class="search">Search</h3>
<p ><a href="#" id="search" onclick="return false">Patient Record</a></p>
 </div>



<div id="patient-detail">
	



</div>


</div>







<div id="content">
<div id="create-patient"></div>
<div id="old-patient">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</div>
<div id="search-record">
    <asp:GridView ID="GridView2" runat="server"></asp:GridView>
</div>

    </div>


<div style="clear:both;"></div>

	</div>


</div>




    </form>
</body>
</html>
