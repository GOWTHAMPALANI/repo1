<?xml version = "1.0" encoding = "UTF-8"?>  
<xsl:stylesheet version = "1.0"   
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  
	
	<xsl:template match = "/">   
		
		<html>   
			<head>
				<title>Daily Collection Tracker Category </title>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
                <link rel="stylesheet" href="https://cedricvb.be/wp-content/pages/xslt/catalog.css" />
				
			</head>
			<style>
					tr:nth-child(odd) {background-color:#F9E79F	; }
					
				</style>
			<body>  
				
				
				
				<div class="container" style= "max-width:1250px;background-color:border:2px solid black;">
					<table class="table table-hover table-border"  style="background-color:#FFF;border:2px solid black;">
						<div class="header"><h2  style="color:black;text-align:center;background-color:;">CollectionCatergory(Spend)-<i><script language="Javascript">
							
							var dayNames = new Array("Sunday","Monday","Tuesday","Wednesday",
							"Thursday","Friday","Saturday");
							
							var monthNames = new Array(
							"January","February","March","April","May","June","July",
							"August","September","October","November","December");
							
							var now = new Date();
							document.write(dayNames[now.getDay()] + ", " + 
							monthNames[now.getMonth()] + " " + 
							now.getDate() + ", " + now.getFullYear());
							
						</script></i>(In Thousand Rupees)</h2></div>
						<tr style="Font-size:18px;position:relative;">  
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Category</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Day</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Week</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Month</th>   
							<th  style="color:black;text-align:center;border-right: 1px solid black; center;background:#F1C40F;" >Year</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >Target</th>   
							<th  style="color:black;text-align:center ;border-right: 1px solid black;center;background:#F1C40F;" >% Collected</th>   
							
							
							
						</tr>   
						
						
						<xsl:for-each select="root/item">
							<tr>
								<td  style="border-top:Font-size:18px; 2px solid black;border: 1px solid black;text-align:left;background-color:#F1C40F;"><b><xsl:value-of select = "category"/></b></td>   
								
								<td  style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color:;"><xsl:value-of select = "Date_Collection"/></td>   
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color: ;" ><xsl:value-of select = "Week_Collection"/></td>   
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color: ;" ><xsl:value-of select = "Month_Collection"/></td>   
								
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color:;"><xsl:value-of select = "Year_Collection"/></td>
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color:;"><xsl:value-of select = "Target"/></td>
								<td style="border-top: 2px solid black;border: 1px solid black;text-align:right;background-color:;"><xsl:value-of select = "Percentage"/></td>
								
								
								
							</tr>   
							
							
						</xsl:for-each>   
										<tr>
                <td Style="background:#F1C40F;"><b>Total</b></td>
                <td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Date_Collection)"/></b></td>
				 <td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Week_Collection)"/></b></td>
				  <td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Month_Collection)"/></b></td>
					 <td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Year_Collection)"/></b></td>	
						<td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Target)"/></b></td>
									    <td style="text-align:right;background:#F1C40F;"><b><xsl:value-of select="sum(/root/item/Percentage)"/></b></td>
										
            </tr> 
				</table>   </div>
				
		</body>   
	</html>   
</xsl:template>    
</xsl:stylesheet>  
