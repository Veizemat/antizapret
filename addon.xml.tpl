<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<addon id="script.module.antizapret" name="Antizapret Proxy Module for Add-ons" version="$VERSION" provider-name="nightik">
    <requires>
        <import addon="xbmc.python" version="2.1.0"/>
    </requires>
    <extension point="xbmc.python.module" library="lib" />
    <extension point="xbmc.addon.repository" name="Antizapret Module Autoupdate Repository">
        <info compressed="false">http://afedchin.github.io/repository/addons.xml</info>
        <checksum>http://afedchin.github.io/repository/addons.xml.md5</checksum>
        <datadir zip="true">http://afedchin.github.io/repository/</datadir>
    </extension>
    <extension point="xbmc.addon.metadata">
        <platform>all</platform>
        <source><![CDATA[https://github.com/afedchin/antizapret]]></source>
        <language></language>
        <license><![CDATA[GNU GENERAL PUBLIC LICENSE. Version 3, 29 June 2007]]></license>
        <summary><![CDATA[Library to avoid site bloking via AntiZapret proxy.]]></summary>
        <description><![CDATA[Library to avoid site bloking via AntiZapret proxy.]]></description>
    </extension>
</addon>
