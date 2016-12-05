<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <TEI>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>The Pilgrim of Castile</title>
                    </titleStmt>
                    <publicationStmt>
                        <p part="N">Publication Information</p>
                    </publicationStmt>
                    <sourceDesc default="false">
                        <p part="N">Information about the source</p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text>
                <body>
                    <xsl:comment>ST: Where the template has an @resp, fill in with a hashtag (#) followed by your initials, so I know who made the entry. There are instructions below for where to fit the person's name and sex into the template. In the note tag, you will write a description of the person. Make it brief, a sentence or so. For example, if the person is Apollo, &lt;note resp="#ST"&gt;Greco-Roman god of poetry and the sun&lt;/note&gt;. Notice I used my initials in the resp attribute.</xsl:comment>
                    <listPerson sortKey="char">
                        
                        
                        <xsl:for-each select="distinct-values(descendant::persName[@type = 'char'])">
                            <xsl:comment><xsl:apply-templates select="."/></xsl:comment>
                            <xsl:comment>ST: Here we output the raw name. You need to format it with the template below:</xsl:comment>
                            <person sex="">
                                <persName>
                                    <xsl:comment>ST: Most of our historical people have only one name. When this is the case, list the name in surname (last name) and delete forename (first name). Spanish names with a geographical ending like Francisco Gomez Duque de Alba will confuse you. Francisco is the forename, Gomez Duque de Alba will be your surname. If your person has two surnames, list them both in the same surname. If he's Miguel de Cervantes Saavedra, surname is Cervantes Saavedra and forename is Miguel.</xsl:comment>
                                    <surname/>
                                    <forename/>
                                    <xsl:comment>ST: &lt;forename/&gt; is where you will put first names for the person, if provided. Delete &lt;forename/&gt; if you do not use it.</xsl:comment>
                                </persName>
                                <persName/>
                                <xsl:comment>ST: &lt;persName/&gt; is where you will put alternate names for the person. Delete this &lt;persName/&gt; if you do not use it.</xsl:comment>
                                <xsl:comment>ST: Be sure to fill in the @value for the person's sex; in which m indicates male, f female, o other, u unknown.</xsl:comment>
                                <note resp=""/>
                            </person>
                            
                        </xsl:for-each>
                    </listPerson>
                    <xsl:comment>ST: Where the template has an @resp, fill in with a hashtag (#) followed by your initials, so I know who made the entry. There are instructions below for where to fit the person's name and sex into the template. In the note tag, you will write a description of the person. Make it brief, a sentence or so. For example, if the person is Apollo, &lt;note resp="#ST"&gt;Greco-Roman god of poetry and the sun&lt;/note&gt;. Notice I used my initials in the resp attribute.</xsl:comment>
                    <listPerson sortKey="hist">
                        
                        
                        <xsl:for-each select="distinct-values(descendant::persName[@type = 'hist'])">
                            <xsl:comment><xsl:apply-templates select="."/></xsl:comment>
                            <xsl:comment>ST: Here we output the raw name. You need to format it with the template below:</xsl:comment>
                            <person sex="">
                                <persName>
                                    <xsl:comment>ST: Most of our historical people have only one name. When this is the case, list the name in surname (last name) and delete forename (first name). Spanish names with a geographical ending like Francisco Gomez Duque de Alba will confuse you. Francisco is the forename, Gomez Duque de Alba will be your surname. If your person has two surnames, list them both in the same surname. If he's Miguel de Cervantes Saavedra, surname is Cervantes Saavedra and forename is Miguel.</xsl:comment>
                                    <surname/>
                                    <forename/>
                                    <xsl:comment>ST: &lt;forename/&gt; is where you will put first names for the person, if provided. Delete &lt;forename/&gt; if you do not use it.</xsl:comment>
                                </persName>
                                <persName/>
                                <xsl:comment>ST: &lt;persName/&gt; is where you will put alternate names for the person. Delete this &lt;persName/&gt; if you do not use it.</xsl:comment>
                                <xsl:comment>ST: Be sure to fill in the @value for the person's sex; in which m indicates male, f female, o other, u unknown.</xsl:comment>
                                <note resp=""/>
                            </person>
                            
                        </xsl:for-each>
                    </listPerson>
                    <listPerson sortKey="myth">
                        
                        
                        <xsl:for-each select="distinct-values(descendant::persName[@type = 'myth'])">
                            <xsl:comment><xsl:apply-templates select="."/></xsl:comment>
                            <xsl:comment>ST: Here we output the raw name. You need to format it with the template below:</xsl:comment>
                            <person sex="">
                                <persName>
                                    <xsl:comment>ST: Most mythic people have exactly one name, like Apollo. Some have many aliases, like Diana/Artemis or other cases where the same figure has multiple names. In that case group them together, and have one version of the name be surname and all others be in an alternate persName (seen below).</xsl:comment>
                                    <surname/>
                                    <forename/>
                                    <xsl:comment>ST: &lt;forename/&gt; is where you will put first names for the person, if provided. Delete &lt;forename/&gt; if you do not use it.</xsl:comment>
                                </persName>
                                <persName/>
                                <xsl:comment>ST: &lt;persName/&gt; is where you will put alternate names for the person. If you have the Greek and Roman versions of the name, list the Roman in surname and put the Greek in an alternate persname.  Delete this &lt;persName/&gt; if you do not use it.</xsl:comment>
                                <xsl:comment>ST: Be sure to fill in the @value for the person's sex; in which m indicates male, f female, o other, u unknown.</xsl:comment>
                                <note resp=""/>
                            </person>
                            
                        </xsl:for-each>
                    </listPerson>
                    <listPerson sortKey="fict">
                        
                        
                        <xsl:for-each select="distinct-values(descendant::persName[@type = 'fict'])">
                            <xsl:comment><xsl:apply-templates select="."/></xsl:comment>
                            <xsl:comment>ST: Here we output the raw name. You need to format it with the template below:</xsl:comment>
                            <person sex="">
                                <persName>
                                    <xsl:comment>ST: Most of our fictional people have only one name. If they have a first and last name, code it with forename and surname. If they have only one name, surname only. If the person has aliases, like Amadis and Beltenebros in Moza, put Amadis in surname and Beltenebros in an alternate persName below. Use the more famous name in surname. If you don't know which one this is, make a GitHub issue. </xsl:comment>
                                    <surname/>
                                    <forename/>
                                    <xsl:comment>ST: &lt;forename/&gt; is where you will put first names for the person, if provided. Delete &lt;forename/&gt; if you do not use it.</xsl:comment>
                                </persName>
                                <persName/>
                                <xsl:comment>ST: &lt;persName/&gt; is where you will put alternate names for the person.  Delete this &lt;persName/&gt; if you do not use it.</xsl:comment>
                                
                                <xsl:comment>ST: Be sure to fill in the @value for the person's sex; in which m indicates male, f female, o other, u unknown.</xsl:comment>
                                <note resp=""/>
                            </person>
                            
                        </xsl:for-each>
                    </listPerson>
                    <listPerson sortKey="bibl">
                        
                        
                        <xsl:for-each select="distinct-values(descendant::persName[@type = 'bibl'])">
                            <xsl:comment><xsl:apply-templates select="."/></xsl:comment>
                            <xsl:comment>ST: Here we output the raw name. You need to format it with the template below:</xsl:comment>
                            <person sex="">
                                <persName>
                                    <xsl:comment>ST: Most of our biblical people have only one name. When this is the case, list the name in surname (last name) and delete forename (first name).</xsl:comment>
                                    <surname/>
                                    <forename/>
                                    <xsl:comment>ST: &lt;forename/&gt; is where you will put first names for the person, if provided. Delete &lt;forename/&gt; if you do not use it.</xsl:comment>
                                </persName>
                                <persName/>
                                <xsl:comment>ST: &lt;persName/&gt; is where you will put alternate names for the person.  Delete this &lt;persName/&gt; if you do not use it.</xsl:comment>
                                <xsl:comment>ST: Be sure to fill in the @value for the person's sex; in which m indicates male, f female, o other, u unknown.</xsl:comment>
                                <note resp=""/>
                            </person>
                            
                        </xsl:for-each>
                    </listPerson>
                </body>
            </text>
        </TEI>
    </xsl:template>
    
</xsl:stylesheet>