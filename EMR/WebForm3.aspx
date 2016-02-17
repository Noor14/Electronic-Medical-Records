<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="EMR.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EMR</title>
    <link rel="stylesheet" type="text/css" href="css/patient.css" />
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
	

	<div id="logo"><img src="images/emr.png" /></div>
<div id="info"><a href="#">Home</a><a href="#">Setting</a><a href="#">Logout</a></div>
    <div id="name">Ashar Hussain</div>
    <div id="pic"></div>


<div style="clear:both;"></div>

	</div>


</div>



<div id="body">

	<div class="main">
	<div id="sidebar" class=" distance">
		

	
<div class="accordion">
<h3>Search</h3>
<p>
<a href="#" id="add">Radiology Records</a>
<a href="#" id="old">Miscilleinious Records</a>
<a href="#" id="search">Lab Records</a>
</p>


 </div>



<div id="patient-detail">
	



</div>


</div>







<div id="content">
<div id="create-patient"></div>
<div id="old-patient"></div>
<div id="search-record"></div>
</div>


<div style="clear:both;"></div>

	</div>


</div>

<div id="footer">
	
<div class="main">
	
<div id="note"></div>


</div>

</div>

    </form>
</body>
</html>
