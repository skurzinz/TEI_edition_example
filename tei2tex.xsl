<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs tei"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:functx="http://www.functx.com"
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
    
    
    <!--    <xsl:strip-space elements=""/>-->
    <xsl:output method="text" encoding="UTF-8" indent="no" omit-xml-declaration="yes"/>
        
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <!-- nix! -->
    </xsl:template>
    
    <xsl:template match="tei:body">
        \documentclass{article}
        \usepackage[utf8]{inputenc}
        
        \title{MozartTaufschein}
        \author{Stephan Kurz}
        \date{January 2022}
        
        \begin{document}
        <xsl:apply-templates/>
        \end{document}
    </xsl:template>
    
    <xsl:template match="tei:p">
        <xsl:text>\par </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:lb">
<!--        <xsl:text>\\ </xsl:text>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:text>\section{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:closer">
        <xsl:text>\vspace*{\baselineskip}\par</xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:date">
        <xsl:text>\emph{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:signed">
        <xsl:text>\textbf{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:dateline">
        <xsl:text>\hfill </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:placeName | tei:persName">
        <xsl:apply-templates/>
        <xsl:text>\index{</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>