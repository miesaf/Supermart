<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:for-each select="supermarket/branch">

		SUPERMARKET	:<xsl:value-of select="./@id"/>	
		BRANCH	:<xsl:value-of select="./branch_name"/>
		ADDRESS	:<xsl:value-of select="./address"/>
			
			
			STOCK LIST:<xsl:for-each select="./store/stocks/stock">
		
				TYPE	:<xsl:value-of select="./@type"/>
				ID	:<xsl:value-of select="./@id"/>

			<xsl:for-each select="./item">
					
					TYPE	:<xsl:value-of select="./@type"/>
					HALAL	:<xsl:value-of select="./@halal"/>

					NAME	:<xsl:value-of select="./item_name"/>
					PRICE	:<xsl:value-of select="./price"/>
					EXPIRED	:<xsl:value-of select="./exp_date"/>					
					M	:<xsl:value-of select="./manufacture"/>
			</xsl:for-each>
			</xsl:for-each>
	
			CUSTOMER LIST:<xsl:for-each select="./store/customers/customer">
					CUSTOMER ID:<xsl:value-of select="./@id"/>
					GENDER:<xsl:value-of select="./@gender"/>
				
					F.NAME	:<xsl:value-of select="./cust_name/fname"/>
					L.NAME	:<xsl:value-of select="./cust_name/lname"/>
					IC	:<xsl:value-of select="./ic"/>
					STREET	:<xsl:value-of select="./cust_address/street"/>
					POSCODE	:<xsl:value-of select="./cust_address/poscode"/>
					CITY	:<xsl:value-of select="./cust_address/city"/>
					EMAIL	:<xsl:value-of select="./email"/>
			</xsl:for-each>

			PURCHASE LIST:<xsl:for-each select="./store/purchases/purchase">

					PURCHASE:<xsl:value-of select="./@id"/>

					<xsl:for-each select="./item_Purchased">
			
					NAME	:<xsl:value-of select="./item_name"/>
					QUANTITY:<xsl:value-of select="./quantity"/>
					PRICE	:<xsl:value-of select="./price"/>

					</xsl:for-each>	

					TOTAL	:<xsl:value-of select="./total"/>
					DATE	:<xsl:value-of select="./date"/>
					PAYMENT	:<xsl:value-of select="./payment/@type"/>
						
			</xsl:for-each>
			
			EMPLOYEE LIST:<xsl:for-each select="./employees/employee">
			
					STAFF	:<xsl:value-of select="./@id"/>
					GENDER	:<xsl:value-of select="./@gender"/>
					SECTION	:<xsl:value-of select="./@section"/>
					SUPERVISOR:<xsl:value-of select="./@svID"/>
					F.NAME	:<xsl:value-of select="./emp_name/fname"/>
					L.NAME	:<xsl:value-of select="./emp_name/lname"/>
					STREET	:<xsl:value-of select="./emp_address/street"/>
					POSCODE	:<xsl:value-of select="./emp_address/poscode"/>
					CITY	:<xsl:value-of select="./emp_address/city"/>
					PHONE NO:<xsl:value-of select="./phone_num"/>
					EMAIL	:<xsl:value-of select="./email"/>
			</xsl:for-each>
			
		
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>