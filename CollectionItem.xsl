<?xml version = "1.0" encoding = "UTF-8"?>  
<xsl:stylesheet version = "1.0"   
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  
	
	
	<xsl:template match = "/">   
		
		<html>   
			<head>
				<title>Daily Collection Tracker Item Wise</title>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
				
				<style>
					tr:nth-child(odd) {background-color:#F9E79F	; }
					
				</style>
				
				
			</head>
			<body>  
				
				
				
				<div class="container" style= "max-width:1250px;background-color:border:2px solid black;">
					<table class="table table-hover table-border"  style="background-color:#FFF;border:2px solid black;">
						<div class="header">  <h2  style="color:black;text-align:center;background-color:;;">CollectionItem-<i><SCRIPT LANGUAGE="Javascript">
							
							
							
							var dayNames = new Array("Sunday","Monday","Tuesday","Wednesday",
							"Thursday","Friday","Saturday");
							
							var monthNames = new Array(
							"January","February","March","April","May","June","July",
							"August","September","October","November","December");
							
							var now = new Date();
							document.write(dayNames[now.getDay()] + ", " + 
							monthNames[now.getMonth()] + " " + 
							now.getDate() + ", " + now.getFullYear());
							
						</SCRIPT></i>(MT)</h2></div>
						<tr style="Font-size:18px;">  
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Category</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Day</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Week</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Month</th>   
							<th  style="color:black;text-align:center;border-right: 1px solid black; center;background:#F1C40F;" >Year</th>   
							
							
							
							
						</tr>   
						
						
						<xsl:for-each select="root/item">
							<tr>
								<td  style="border-top: 2px solid black;border: 1px solid black;text-align:left;background-color:#F1C40F;"><b><xsl:value-of select = "category"/></b></td>   
								
								<td  style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color:;"><xsl:value-of select = "Date_Collection"/></td>   
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color: ;" ><xsl:value-of select = "Week_Collection"/></td>   
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color: ;" ><xsl:value-of select = "Month_Collection"/></td>   
								
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color:;"><xsl:value-of select = "Year_Collection"/></td>
								
								
								
								
							</tr>   
							
							
						</xsl:for-each>   
						<tr>
							<td Style="background:#F1C40F;text-align:center;"><b>Total</b></td>
							<td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Date_Collection)"/></b></td>
							<td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Week_Collection)"/></b></td>
							<td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Month_Collection)"/></b></td>
							<td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Year_Collection)"/></b></td>
							
						</tr> 
					</table>   </div>
					
			</body>   
		</html>   
	</xsl:template>    
</xsl:stylesheet>  
