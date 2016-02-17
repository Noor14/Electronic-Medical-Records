<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EMR.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EMR</title>
    <link rel="stylesheet" type="text/css" href="css/1stpage.css" />
	<script type="text/javascript" src="jquery/JavaScript.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $('.doctor').click(function () {

                $('.login').toggle();
                $('.signup,.labsignup,.patientlogin,.lablogin').hide();
                $(this).blur();
            });
            $('.Account').click(function () {

                $('.signup').show();
                $('.login').hide();
            });
            $('#cancel').click(function () {

                $('.signup').hide();
            });
            $('.lab').click(function () {

                $('.lablogin').toggle();
                $('.login,.signup,.patientlogin,.labsignup').hide();
                $(this).blur();

            });
            $('.labaccount').click(function () {

                $('.labsignup').show();
                $('.lablogin').hide();
              });
            $('#hide').click(function () {

                $('.labsignup').hide();
            });
            $('.patient').click(function () {

                $('.patientlogin').toggle();
                $('.labsignup,.lablogin,.login,.signup').hide();
                $(this).blur();
            });
            $('#phide').click(function () {

                $('.patientlogin').hide();
            });
            $('#backdoc').click(function () {

                $('.signup').hide();
                $('.login').show();
            });
            $('#backlab').click(function () {

                $('.labsignup').hide();
                $('.lablogin').show();
            });



        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
	<div class="main">
	<div id="logo"></div>
	<div id="nav">	
<ul>
	
<li><a class="doctor" href="#" onclick="return false">Doctor</a></li>
<li><a class="patient" href="#">Patient</a></li>
<li><a class="radiology" href="#">Radiology</a></li>
<li><a class="miscillineous" href="#">Miscillineous</a></li>
<li><a class="lab" href="#">Lab</a></li>
</ul>
<div style="clear:both"></div>
</div>
<div style="clear:both"></div>
	</div>

</div>


<div id="body">

<div class="main">
<div id="sign">
	<div class="login">
	<p>Do you have an Account?</p>
	
		<span>Register Id</span><asp:TextBox ID="TextBox1" CssClass="panel" placeholder="Registered ID*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        <span>Password</span><asp:TextBox ID="TextBox2" CssClass="panel" TextMode="Password" placeholder="Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        <asp:Button OnClientClick="return false" ID="Button1" CssClass="panel button Account" runat="server" Text="Signup"  />
        <asp:Button OnClientClick="return false" ID="Button2" CssClass="panel button" runat="server" Text="Login" OnClick="Button2_Click" />
        
     
<div style="clear:both"></div>
	</div>
	<div class="signup">

		<!-- <p>Do you have an Account?</p> -->
	
	   <div class="cross"><i id="cancel" style="float:right; cursor:pointer;" class="fa fa-times"></i><i id="backdoc" style="margin-right:8px;  float:right; cursor:pointer; "  class="fa fa-arrow-left"></i></div>
		<div class="info"><span>Register Id</span><asp:TextBox ID="TextBox3" CssClass="panel"  placeholder="Register Id*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span>Full Name</span><asp:TextBox ID="TextBox4" CssClass="panel"  placeholder="Full Name*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span>Contact No</span><asp:TextBox ID="TextBox5" CssClass="panel"  placeholder="Contact No*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span>CNIC No</span><asp:TextBox ID="TextBox6" CssClass="panel"  placeholder="CNIC No*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br /></div>
		<div class="password"><span>Password</span><asp:TextBox ID="TextBox7" CssClass="panel" TextMode="Password" placeholder="Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span>Retype Password</span><asp:TextBox ID="TextBox8" CssClass="panel" TextMode="Password" placeholder="Retype Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span style="float:left;">Clinic Address</span><asp:TextBox ID="TextBox9" CssClass="panel" runat="server" placeholder="Address*" Columns="34" Rows="3" TextMode="MultiLine" Wrap="False"> </asp:TextBox><br />
        <asp:Button OnClientClick="return false" ID="Button3" CssClass="panel button" runat="server" Text="Create Account" OnClick="Button2_Click" /></div>
    
<div style="clear:both"></div>

	</div>



    	<div class="lablogin">
	<p>Do you have an Account?</p>
	
		<span>Lab Id</span><asp:TextBox ID="TextBox11" CssClass="panel" placeholder="Registered ID*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        <span>Password</span><asp:TextBox ID="TextBox13" CssClass="panel" TextMode="Password" placeholder="Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        <asp:Button OnClientClick="return false" ID="Button5" CssClass="panel button labaccount" runat="server" Text="Signup"  />
        <asp:Button OnClientClick="return false" ID="Button6" CssClass="panel button" runat="server" Text="Login" OnClick="Button2_Click" />
        
     
<div style="clear:both"></div>
	</div>
    	<div class="labsignup">

		<!-- <p>Do you have an Account?</p> -->
	
	  <div class="cross"> <i style="float:right; cursor:pointer;" id="hide" class="fa fa-times"></i><i id="backlab" style="margin-right:8px;  float:right; cursor:pointer; "  class="fa fa-arrow-left"></i></div>
		<div class="info"><span>Lab Id</span><asp:TextBox ID="TextBox10" CssClass="panel"  placeholder="Register Id*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span>Contact No</span><asp:TextBox ID="TextBox12" CssClass="panel"  placeholder="Contact No*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		</div>
		<div class="password"><span>Password</span><asp:TextBox ID="TextBox14" CssClass="panel" TextMode="Password" placeholder="Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span>Retype Password</span><asp:TextBox ID="TextBox15" CssClass="panel" TextMode="Password" placeholder="Retype Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
		<span style="float:left;">Lab Address</span><asp:TextBox ID="TextBox16" CssClass="panel" runat="server" placeholder="Address*" Columns="34" Rows="3" TextMode="MultiLine" Wrap="False"> </asp:TextBox><br />
        <asp:Button OnClientClick="return false" ID="Button4" CssClass="panel button" runat="server" Text="Create Account" OnClick="Button2_Click" /></div>
    
<div style="clear:both"></div>

	</div>
    <div class="patientlogin">
	<div class="cross"> <i style="float:right; cursor:pointer;" id="phide" class="fa fa-times"></i></div>
        <p>Do you have an Account?</p>
	    <span>Password</span><asp:TextBox ID="TextBox18" CssClass="panel" TextMode="Password"  placeholder="Password*" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        <asp:Button OnClientClick="return false" ID="Button8" CssClass="panel button" runat="server" Text="Login" OnClick="Button2_Click" />
        
     
<div style="clear:both"></div>
	</div>

  





</div>
</div>	
 

</div>
<div id="footer">
<div class="main"></div>	

</div>
    </form>
</body>
</html>
