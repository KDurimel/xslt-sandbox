<?xml version='1.0'  encoding="ISO-8859-1"?>
<xsl:stylesheet
	xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	version='1.0'
	>

<!--


Author:
   Pierre Lindenbaum PhD plindenbaum@yahoo.fr


-->
<xsl:output method='text' encoding="UTF-8"/>


<xsl:template match="/">
<xsl:apply-templates select="PubmedArticleSet"/>
</xsl:template>

<xsl:template match="PubmedArticleSet">
<xsl:text>[</xsl:text>
<xsl:apply-templates select="PubmedArticle"/>
<xsl:text>]</xsl:text>
</xsl:template>


<xsl:template match="PubmedArticle">
<xsl:if test="position()&gt;1">,</xsl:if>
<xsl:text>{"pmid":</xsl:text>
<xsl:value-of select="MedlineCitation/PMID"/>
<xsl:apply-templates select="MedlineCitation"/>
<xsl:text>}</xsl:text>
</xsl:template>


<xsl:template match="MedlineCitation">

<xsl:choose>
	<xsl:when test="Article/ArticleTitle">
		<xsl:text>,"title":</xsl:text>
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Article/ArticleTitle"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>,"title":null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="Article/Journal/JournalIssue"/>
<xsl:choose>
	<xsl:when test="Article/Abstract/AbstractText">
		<xsl:text>,"abstract":</xsl:text>
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Article/Abstract/AbstractText"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>,"abstract":null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="MedlineJournalInfo"/>
<xsl:apply-templates select="Article/AuthorList"/>
</xsl:template>


<xsl:template match="MedlineJournalInfo">
<xsl:text>,"journalInfo":{"nlmUniqueID":</xsl:text>
<xsl:call-template name="quote">
	<xsl:with-param name="s" select="NlmUniqueID"/>
</xsl:call-template>
<xsl:text>,"medlineTA":</xsl:text>
<xsl:call-template name="quote">
	<xsl:with-param name="s" select="MedlineTA"/>
</xsl:call-template>
<xsl:text>}</xsl:text>
</xsl:template>


<xsl:template match="AuthorList">
<xsl:text>,"authors":[</xsl:text>
<xsl:apply-templates select="Author"/>
<xsl:text>]</xsl:text>
</xsl:template>


<xsl:template match="Author">
<xsl:if test="position()&gt;1">,</xsl:if>
<xsl:text>{"lastName":</xsl:text>
<xsl:call-template name="quote">
	<xsl:with-param name="s" select="LastName"/>
</xsl:call-template>
<xsl:text>,"foreName":</xsl:text>
<xsl:call-template name="quote">
	<xsl:with-param name="s" select="ForeName"/>
</xsl:call-template>

<xsl:if test="Initials">
	<xsl:text>,"initials":</xsl:text>
	<xsl:call-template name="quote">
		<xsl:with-param name="s" select="Initials"/>
	</xsl:call-template>
</xsl:if>

<xsl:if test="Affiliation">
	<xsl:text>,"affiliation":</xsl:text>
	<xsl:call-template name="quote">
		<xsl:with-param name="s" select="Affiliation"/>
	</xsl:call-template>
</xsl:if>


<xsl:text>}</xsl:text>
</xsl:template>


<xsl:template match="JournalIssue">
<xsl:text>,"journal":{"volume":</xsl:text>
<xsl:choose>
	<xsl:when test="Volume">
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Volume"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:text>,"issue":</xsl:text>
<xsl:choose>
	<xsl:when test="Issue">
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Issue"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:text>,"pubdate":</xsl:text>
<xsl:choose>
	<xsl:when test="PubDate">
		<xsl:apply-templates select="PubDate" mode="date"/>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>null</xsl:text>
	</xsl:otherwise>
</xsl:choose>

<xsl:text>}</xsl:text>
</xsl:template>

<xsl:template match="*" mode="date">
<xsl:text>{"year":</xsl:text>
<xsl:choose>
	<xsl:when test="number(Year)&gt;0">
		<xsl:value-of select="Year"/>
	</xsl:when>
	<xsl:when test="Year">
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Year"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:text>,"month":</xsl:text>
<xsl:choose>
	<xsl:when test="number(Month)&gt;0">
		<xsl:value-of select="Month"/>
	</xsl:when>
	<xsl:when test="Month">
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Month"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:text>,"day":</xsl:text>
<xsl:choose>
	<xsl:when test="number(Day)&gt;0">
		<xsl:value-of select="Day"/> 
	</xsl:when>
	<xsl:when test="Day">
		<xsl:call-template name="quote">
			<xsl:with-param name="s" select="Day"/>
		</xsl:call-template>
	</xsl:when>
	<xsl:otherwise>
		<xsl:text>null</xsl:text>
	</xsl:otherwise>
</xsl:choose>
<xsl:text>}</xsl:text>
</xsl:template>

<xsl:template name="quote">
<xsl:param name="s"/>
<xsl:text>"</xsl:text>
<xsl:call-template name="escape">
	<xsl:with-param name="s" select="$s"/>
</xsl:call-template>
<xsl:text>"</xsl:text>
</xsl:template>


<xsl:template name="escape">
 <xsl:param name="s" />
 <xsl:variable name="a">&quot;</xsl:variable>

 <xsl:choose>
 <xsl:when test="contains($s,$a)">
       <xsl:value-of select="substring-before($s,$a)"/>
       <xsl:text>\</xsl:text>
       <xsl:value-of select="$a"/>
       <xsl:call-template name="escape">
	<xsl:with-param name="s" select="substring-after($s,$a)"/>
	</xsl:call-template>
 </xsl:when>
 <xsl:otherwise>
   <xsl:value-of select="$s"/>
 </xsl:otherwise>
 </xsl:choose>
</xsl:template>


</xsl:stylesheet>
