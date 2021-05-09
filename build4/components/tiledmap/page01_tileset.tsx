<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="page01_tileset" tilewidth="16" tileheight="16" tilecount="4" columns="2">
    <image source="../../assets/images/p1/tileset.png" width="32" height="32"/>
 <tile id="0" type="wall">
  <properties>
   <property name="bodyType" value="static"/>
   <property name="hasBody" type="bool" value="true"/>
  </properties>
 </tile>
 <tile id="1" type="enemy">
  <properties>
   <property name="bodyType" value="dynamic"/>
   <property name="hasBody" type="bool" value="true"/>
  </properties>
 </tile>
 <tile id="2" type="sensor">
  <properties>
   <property name="bodyType" value="kinematic"/>
   <property name="hasBody" type="bool" value="true"/>
   <property name="isAnimated" type="bool" value="true"/>
   <property name="name" value="itemAnim"/>
  </properties>
  <animation>
   <frame tileid="2" duration="1000"/>
   <frame tileid="3" duration="1000"/>
  </animation>
 </tile>
</tileset>
