<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>shopkeepers registration form</title>
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>shopkeepers details</h1>
	</div>
		<div class="container">
			<div class="heading">
				<h2>Please Enter Your Details</h2>
				
			</div>
			<div class="agile-form">
				<form action="shopcheck.jsp" method="post">
					<ul class="field-list">
						<li> 
							<label class="form-label"> Shop_name </label>
							<div class="form-input">
								<input type="text" name="shopname" placeholder="shopkeeper shopname" required >
							</div>
						</li>
							<li> 
							<label class="form-label"> state </label>
							<div class="form-input">
								<select name="state">
                        <option value="rajasthan">rajasthan</option>
                        <option value="maharashtra">maharashtra</option>
                         </select>
							</div>
						</li>
						<li> 
							<label class="form-label"> city </label>
							<div class="form-input">
								<select name="city">
                        <option value="jaipur">jaipur</option>
                        <option value="mumbai">mumbai</option>
                         </select>
							</div>
						</li>
						<li> 
							<label class="form-label"> tourist_place </label>
							<div class="form-input">
								<select name="tourist_place">
                        <option value="jalmahel">jalmahel</option>
                        <option value="hawamahel">hawamahel</option>
                        <option value="juhu_beach">juhu_beach</option>
                        <option value="gateway_of_india">gateway_of_india</option>
                         </select>
							</div>
						</li>
						<li> 
							<label class="form-label"> Address</label>
							<div class="form-input">
								<input type="text" name="address" placeholder="address" required >
							</div>
						</li>
							<li> 
													 <table id="tb" width="100%">
 	<tr>
 		<th>food_type</th>
 		<td><input type="text" placeholder="enter type of food(eg-pizza)" name="bName[]"></td>
 		<td align="right"><input type="button" placeholder="food name" onclick="addRows('tb')" value="other food"/>
</td>
 	</tr>
 </table>
							
						</li>
					
				
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Submit">
					</div>
				</form>	
			</div>
		</div>
		<div class="copyright">
			<p>2018 shopkeepers details form Design by team developers</p>
		</div>
	</div>
</body>
<script>
function addRows(tableID)
{
     var table = document.getElementById(tableID);
    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
	 
	
    var cell1 = row.insertCell(0);
cell1.innerHTML = 'food_name';
    
    
    var cell2 = row.insertCell(1);
     cell2.innerHTML ='<input type="text" placeholder="food name" name="bName[]">';

     var cell3 = row.insertCell(2);    
     cell3.innerHTML = "<INPUT type='button' class='btn btn-danger' value='remove_food' onclick=deleteRow('tb',"+rowCount+") >";
 
 }
function deleteRow(tableID,rowId)
{
   try
   {
         var table = document.getElementById(tableID);
         table.deleteRow(rowId);
        
  }
  catch(e)
  {
        alert(e);
  }
}
</script>
</html>