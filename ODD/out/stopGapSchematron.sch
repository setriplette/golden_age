<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
  
<pattern>
    <rule context="tei:*[@type eq 'emotion']">
        <report test="not(@ana)">rs type="emotion must have its part of speech coded in @ana!</report> 
    </rule>
    
</pattern>

</schema>