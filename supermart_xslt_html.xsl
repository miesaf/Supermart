<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
	<style>
		table{
			border-collapse: collapse;
		}
		
		tr:hover{
			background-color: #d9d9d9;
		}
		
		td, th{
			padding: 5px;
		}
		
		tr:nth-child(even){background-color: #e1f0c1}
		
		*{
			font-family: Calibri;
		}
	</style>
</head>
<body>
	<!-- List the branches that exist -->
	<h2>Branch List</h2>
	<table border="1">
		<tr bgcolor="#9acd32">
			<th>Branch Name</th>
			<th>Address</th>
		</tr>
		<xsl:for-each select="./supermarket/branch">
		<tr>
			<td><xsl:value-of select="./branch_name"/></td>
			<td><xsl:value-of select="./address"/></td>
		</tr>
		</xsl:for-each>
	</table>
	
	<!-- List branches childs -->
	<xsl:for-each select="./supermarket/branch">
		<br/>
		<hr/>
		<h1>Branch: <xsl:value-of select="./branch_name"/></h1>
		<p>Address: <xsl:value-of select="./address"/></p>
		<h2>Employee List</h2>
		<table border="1">
			<tr bgcolor="#9acd32">
				<th>Employee ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Work Section</th>
				<th>Address</th>
				<th>Phone Number</th>
				<th>e-Mail</th>
			</tr>
			<xsl:for-each select="./employees/employee">
			<tr>
				<td style="text-align: center;"><xsl:value-of select="./@id"/></td>
				<td><xsl:value-of select="./emp_name"/></td>
				<td style="text-align: center;"><xsl:value-of select="./@gender"/></td>
				<td><xsl:value-of select="./@section"/></td>
				<td><xsl:value-of select="./emp_address"/></td>
				<td style="text-align: center;"><xsl:value-of select="./phone_num"/></td>
				<td><xsl:value-of select="./email"/></td>
			</tr>
			</xsl:for-each>
		</table>
		<br/>
		<h2>Customer List</h2>
		<table border="1">
			<tr bgcolor="#9acd32">
				<th>Customer ID</th>
				<th>Customer Name</th>
				<th>Address</th>
			</tr>
			<xsl:for-each select="./store/customers/customer">
			<tr>
				<td style="text-align: center;"><xsl:value-of select="./@id"/></td>
				<td><xsl:value-of select="./cust_name/lname"/>, <xsl:value-of select="./cust_name/fname"/></td>
				<td><xsl:value-of select="./cust_address/street"/>,<br/><xsl:value-of select="./cust_address/poscode"/><xsl:text> </xsl:text><xsl:value-of select="./cust_address/city"/></td>
			</tr>
			</xsl:for-each>
		</table>
		<br/>
		<h2>Purchases List</h2>
		<xsl:for-each select="./store/purchases/purchase">
			<p>Purchase ID : <xsl:value-of select="./@id"/><br/>Date : <xsl:value-of select="./date"/><br/>Payment Type : <xsl:value-of select="./payment/@type"/></p>
			<table border="1">
				<tr bgcolor="#9acd32">
					<th>Item Name</th>
					<th>Price</th>
					<th>Quantity</th>
				</tr>
				<xsl:for-each select="./item_Purchased">
				<tr>
					<td><xsl:value-of select="./item_name"/></td>
					<td style="text-align: center;"><xsl:value-of select="./price"/></td>
					<td style="text-align: center;"><xsl:value-of select="./quantity"/></td>
				</tr>
				</xsl:for-each>
				<tr>
					<td>Total</td>
					<td><xsl:value-of select="./total"/></td>
					<td bgcolor="#111111"></td>
				</tr>
			</table>
			<br/>
		</xsl:for-each>
		<br/>
		<h2>Stock List</h2>
		<xsl:for-each select="./store/stocks/stock">
			<p>Stock ID : <xsl:value-of select="./@id"/><br/>Stock Type : <xsl:value-of select="./@type"/></p>
			<table border="1">
				<tr bgcolor="#9acd32">
					<th>Item Name</th>
					<th>Price</th>
					<th>Type</th>
					<th>Halal Status</th>
					<th>Expiry Date</th>
					<th>Manufactured</th>
				</tr>
				<xsl:for-each select="./item">
				<tr>
					<td><xsl:value-of select="./item_name"/></td>
					<td style="text-align: center;"><xsl:value-of select="./price"/></td>
					<td><xsl:value-of select="./@type"/></td>
					<td style="text-align: center;"><xsl:value-of select="./@halal"/></td>
					<td style="text-align: center;"><xsl:value-of select="./exp_date"/></td>
					<td style="text-align: center;"><xsl:value-of select="./manufacture"/></td>
				</tr>
				</xsl:for-each>
			</table>
			<br/>
		</xsl:for-each>
	</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>