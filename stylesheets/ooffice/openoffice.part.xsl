<?xml version="1.0"?>
<xsl:stylesheet 
  version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
	xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
	xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
	xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
	xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
	xmlns:ooo="http://openoffice.org/2004/office"
	xmlns:smil="urn:oasis:names:tc:opendocument:xmlns:smil-compatible:1.0"
	xmlns:anim="urn:oasis:names:tc:opendocument:xmlns:animation:1.0"
	xmlns:grddl="http://www.w3.org/2003/g/data-view#"
	xmlns:officeooo="http://openoffice.org/2009/office"
	xmlns:drawooo="http://openoffice.org/2010/draw"
	xmlns:manifest="urn:oasis:names:tc:opendocument:xmlns:manifest:1.0"
	xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0"
	xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
	xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
	xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
	xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
	xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
	xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
	xmlns:math="http://www.w3.org/1998/Math/MathML"
	xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" 	
	xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
	xmlns:ooow="http://openoffice.org/2004/writer"
	xmlns:oooc="http://openoffice.org/2004/calc"
	xmlns:dom="http://www.w3.org/2001/xml-events"
	xmlns:rpt="http://openoffice.org/2005/report"
	xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:tableooo="http://openoffice.org/2009/table"
	xmlns:css3t="http://www.w3.org/TR/css3-text/" 
  >



<xsl:template name="make.document.meta">
<xsl:param name="creator">Pierre Lindenbaum</xsl:param>
<office:document-meta office:version="1.2">
  <office:meta>
    <meta:initial-creator>Pierre </meta:initial-creator>
    <meta:creation-date>2013-01-16T23:35:02</meta:creation-date>
    <meta:editing-duration>P0D</meta:editing-duration>
    <meta:editing-cycles>1</meta:editing-cycles>
    <dc:date>2013-01-16T23:36:30</dc:date>
    <dc:creator><xsl:value-of select="$creator"/></dc:creator>
    <meta:document-statistic meta:object-count="29"/>
    <meta:generator>XSLT</meta:generator>
  </office:meta>
</office:document-meta>
</xsl:template>

<xsl:template name="make.metainf.manifest.odp">
<manifest:manifest  manifest:version="1.2">
  <manifest:file-entry manifest:full-path="/" manifest:version="1.2" manifest:media-type="application/vnd.oasis.opendocument.presentation"/>
  <manifest:file-entry manifest:full-path="meta.xml" manifest:media-type="text/xml"/>
  <manifest:file-entry manifest:full-path="settings.xml" manifest:media-type="text/xml"/>
  <manifest:file-entry manifest:full-path="content.xml" manifest:media-type="text/xml"/>
  <manifest:file-entry manifest:full-path="Thumbnails/thumbnail.png" manifest:media-type="image/png"/>
  <manifest:file-entry manifest:full-path="Configurations2/accelerator/current.xml" manifest:media-type=""/>
  <manifest:file-entry manifest:full-path="Configurations2/" manifest:media-type="application/vnd.sun.xml.ui.configuration"/>
  <manifest:file-entry manifest:full-path="styles.xml" manifest:media-type="text/xml"/>
</manifest:manifest>
</xsl:template>


<xsl:template name="make.thumbnail">
<xsl:text>echo "iVBORw0KGgoAAAANSUhEUgAAAQAAAADACAIAAABkjyoxAAAAAXNSR0IArs4c6QAAAAZiS0dE</xsl:text>
<xsl:text>ANkA2QDZAPHCmAAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB90BERMdAFa9zS4AAAGESURBVH</xsl:text>
<xsl:text>ja7dNBDQAACMQwwL/nwwQ/WglL1kkKvhoJMAAYAAwABgADgAHAAGAAMAAYAAwABgADgAHAAGAAMAAY</xsl:text>
<xsl:text>AAwABgADgAHAAGAAMAAYAAwABgADgAHAAGAAMAAYAAwABgADgAHAAGAAMAAYAAwABgADgAHAAGAAMA</xsl:text>
<xsl:text>AYAAyAAcAAYAAwABgADAAGAAOAAcAAYAAwABgADAAGAAOAAcAAYAAwABgADAAGAAOAAcAAYAAwABgA</xsl:text>
<xsl:text>DAAGAAOAAcAAYAAwABgADAAGAAOAAcAAYAAwABgADAAGAAOAAcAAYAAwAAYAA4ABwABgADAAGAAMAA</xsl:text>
<xsl:text>YAA4ABwABgADAAGAAMAAYAA4ABwABgADAAGAAMAAYAA4ABwABgADAAGAAMAAYAA4ABwABgADAAGAAM</xsl:text>
<xsl:text>AAYAA4ABwABgADAAGAAMAAYAA4ABMAAYAAwABgADgAHAAGAAMAAYAAwABgADgAHAAGAAMAAYAAwABg</xsl:text>
<xsl:text>ADgAHAAGAAMAAYAAwABgADgAHAAGAAMAAYAAwABoBLC8b4BH2UO12VAAAAAElFTkSuQmCC" |\
	base64 -d &gt;  Thumbnails/thumbnail.png
</xsl:text>
</xsl:template>



<xsl:template name="make.settings">
<office:document-settings office:version="1.2">
  <office:settings>
    <config:config-item-set config:name="ooo:view-settings">
      <config:config-item config:name="VisibleAreaTop" config:type="int">920</config:config-item>
      <config:config-item config:name="VisibleAreaLeft" config:type="int">0</config:config-item>
      <config:config-item config:name="VisibleAreaWidth" config:type="int">26727</config:config-item>
      <config:config-item config:name="VisibleAreaHeight" config:type="int">15913</config:config-item>
      <config:config-item-map-indexed config:name="Views">
        <config:config-item-map-entry>
          <config:config-item config:name="ViewId" config:type="string">view3</config:config-item>
          <config:config-item config:name="GridIsVisible" config:type="boolean">true</config:config-item>
          <config:config-item config:name="GridIsFront" config:type="boolean">false</config:config-item>
          <config:config-item config:name="IsSnapToGrid" config:type="boolean">true</config:config-item>
          <config:config-item config:name="IsSnapToPageMargins" config:type="boolean">true</config:config-item>
          <config:config-item config:name="IsSnapToSnapLines" config:type="boolean">true</config:config-item>
          <config:config-item config:name="IsSnapToObjectFrame" config:type="boolean">true</config:config-item>
          <config:config-item config:name="IsSnapToObjectPoints" config:type="boolean">false</config:config-item>
          <config:config-item config:name="IsPlusHandlesAlwaysVisible" config:type="boolean">false</config:config-item>
          <config:config-item config:name="IsFrameDragSingles" config:type="boolean">true</config:config-item>
          <config:config-item config:name="EliminatePolyPointLimitAngle" config:type="int">1500</config:config-item>
          <config:config-item config:name="IsEliminatePolyPoints" config:type="boolean">false</config:config-item>
          <config:config-item config:name="VisibleLayers" config:type="base64Binary">//////////////////////////////////////////8=</config:config-item>
          <config:config-item config:name="PrintableLayers" config:type="base64Binary">//////////////////////////////////////////8=</config:config-item>
          <config:config-item config:name="LockedLayers" config:type="base64Binary"/>
          <config:config-item config:name="NoAttribs" config:type="boolean">false</config:config-item>
          <config:config-item config:name="NoColors" config:type="boolean">true</config:config-item>
          <config:config-item config:name="RulerIsVisible" config:type="boolean">false</config:config-item>
          <config:config-item config:name="PageKind" config:type="short">0</config:config-item>
          <config:config-item config:name="SelectedPage" config:type="short">1</config:config-item>
          <config:config-item config:name="IsLayerMode" config:type="boolean">false</config:config-item>
          <config:config-item config:name="IsDoubleClickTextEdit" config:type="boolean">true</config:config-item>
          <config:config-item config:name="IsClickChangeRotation" config:type="boolean">false</config:config-item>
          <config:config-item config:name="SlidesPerRow" config:type="short">4</config:config-item>
          <config:config-item config:name="EditModeStandard" config:type="int">0</config:config-item>
          <config:config-item config:name="EditModeNotes" config:type="int">0</config:config-item>
          <config:config-item config:name="EditModeHandout" config:type="int">1</config:config-item>
          <config:config-item config:name="VisibleAreaTop" config:type="int">-2171</config:config-item>
          <config:config-item config:name="VisibleAreaLeft" config:type="int">-407</config:config-item>
          <config:config-item config:name="VisibleAreaWidth" config:type="int">28834</config:config-item>
          <config:config-item config:name="VisibleAreaHeight" config:type="int">25374</config:config-item>
          <config:config-item config:name="GridCoarseWidth" config:type="int">2540</config:config-item>
          <config:config-item config:name="GridCoarseHeight" config:type="int">2540</config:config-item>
          <config:config-item config:name="GridFineWidth" config:type="int">254</config:config-item>
          <config:config-item config:name="GridFineHeight" config:type="int">254</config:config-item>
          <config:config-item config:name="GridSnapWidthXNumerator" config:type="int">254</config:config-item>
          <config:config-item config:name="GridSnapWidthXDenominator" config:type="int">1</config:config-item>
          <config:config-item config:name="GridSnapWidthYNumerator" config:type="int">254</config:config-item>
          <config:config-item config:name="GridSnapWidthYDenominator" config:type="int">1</config:config-item>
          <config:config-item config:name="IsAngleSnapEnabled" config:type="boolean">false</config:config-item>
          <config:config-item config:name="SnapAngle" config:type="int">1500</config:config-item>
        </config:config-item-map-entry>
      </config:config-item-map-indexed>
    </config:config-item-set>
    <config:config-item-set config:name="ooo:configuration-settings">
      <config:config-item config:name="ApplyUserData" config:type="boolean">true</config:config-item>
      <config:config-item config:name="BitmapTableURL" config:type="string">$(user)/config/standard.sob</config:config-item>
      <config:config-item config:name="CharacterCompressionType" config:type="short">0</config:config-item>
      <config:config-item config:name="ColorTableURL" config:type="string">$(user)/config/standard.soc</config:config-item>
      <config:config-item config:name="DashTableURL" config:type="string">$(user)/config/standard.sod</config:config-item>
      <config:config-item config:name="DefaultTabStop" config:type="int">1270</config:config-item>
      <config:config-item-map-indexed config:name="ForbiddenCharacters">
        <config:config-item-map-entry>
          <config:config-item config:name="Language" config:type="string">en</config:config-item>
          <config:config-item config:name="Country" config:type="string">US</config:config-item>
          <config:config-item config:name="Variant" config:type="string"/>
          <config:config-item config:name="BeginLine" config:type="string"/>
          <config:config-item config:name="EndLine" config:type="string"/>
        </config:config-item-map-entry>
      </config:config-item-map-indexed>
      <config:config-item config:name="GradientTableURL" config:type="string">$(user)/config/standard.sog</config:config-item>
      <config:config-item config:name="HandoutsHorizontal" config:type="boolean">true</config:config-item>
      <config:config-item config:name="HatchTableURL" config:type="string">$(user)/config/standard.soh</config:config-item>
      <config:config-item config:name="IsKernAsianPunctuation" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintBooklet" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintBookletBack" config:type="boolean">true</config:config-item>
      <config:config-item config:name="IsPrintBookletFront" config:type="boolean">true</config:config-item>
      <config:config-item config:name="IsPrintDate" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintDrawing" config:type="boolean">true</config:config-item>
      <config:config-item config:name="IsPrintFitPage" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintHandout" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintHiddenPages" config:type="boolean">true</config:config-item>
      <config:config-item config:name="IsPrintNotes" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintOutline" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintPageName" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintTilePage" config:type="boolean">false</config:config-item>
      <config:config-item config:name="IsPrintTime" config:type="boolean">false</config:config-item>
      <config:config-item config:name="LineEndTableURL" config:type="string">$(user)/config/standard.soe</config:config-item>
      <config:config-item config:name="LoadReadonly" config:type="boolean">false</config:config-item>
      <config:config-item config:name="PageNumberFormat" config:type="int">4</config:config-item>
      <config:config-item config:name="ParagraphSummation" config:type="boolean">false</config:config-item>
      <config:config-item config:name="PrintQuality" config:type="int">0</config:config-item>
      <config:config-item config:name="PrinterIndependentLayout" config:type="string">low-resolution</config:config-item>
      <config:config-item config:name="PrinterName" config:type="string"/>
      <config:config-item config:name="PrinterSetup" config:type="base64Binary"/>
      <config:config-item config:name="SaveVersionOnClose" config:type="boolean">false</config:config-item>
      <config:config-item config:name="SlidesPerHandout" config:type="short">6</config:config-item>
      <config:config-item config:name="UpdateFromTemplate" config:type="boolean">true</config:config-item>
    </config:config-item-set>
  </office:settings>
</office:document-settings>
</xsl:template>
<xsl:template name="make.styles">
<office:document-styles office:version="1.2">
  <office:styles>
    <draw:marker draw:name="Arrow" svg:viewBox="0 0 20 30" svg:d="m10 0-10 30h20z"/>
    <style:default-style style:family="graphic">
      <style:graphic-properties svg:stroke-color="#808080" draw:fill-color="#cfe7f5" fo:wrap-option="no-wrap"/>
      <style:paragraph-properties style:text-autospace="ideograph-alpha" style:punctuation-wrap="simple" style:line-break="strict" style:writing-mode="lr-tb" style:font-independent-line-spacing="false">
        <style:tab-stops/>
      </style:paragraph-properties>
      <style:text-properties style:use-window-font-color="true" fo:font-family="'Liberation Serif'" style:font-family-generic="roman" style:font-pitch="variable" fo:font-size="24pt" fo:language="en" fo:country="US" style:font-family-asian="'DejaVu Sans'" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-size-asian="24pt" style:language-asian="zh" style:country-asian="CN" style:font-family-complex="'DejaVu Sans'" style:font-family-generic-complex="system" style:font-pitch-complex="variable" style:font-size-complex="24pt" style:language-complex="hi" style:country-complex="IN"/>
    </style:default-style>
    <style:style style:name="standard" style:family="graphic">
      <style:graphic-properties draw:stroke="solid" svg:stroke-width="0cm" svg:stroke-color="#808080" draw:marker-start-width="0.2cm" draw:marker-start-center="false" draw:marker-end-width="0.2cm" draw:marker-end-center="false" draw:fill="solid" draw:fill-color="#cfe7f5" draw:textarea-horizontal-align="justify" fo:padding-top="0.125cm" fo:padding-bottom="0.125cm" fo:padding-left="0.25cm" fo:padding-right="0.25cm" draw:shadow="hidden" draw:shadow-offset-x="0.2cm" draw:shadow-offset-y="0.2cm" draw:shadow-color="#808080">
        <text:list-style style:name="standard">
          <text:list-level-style-bullet text:level="1" text:bullet-char="●">
            <style:list-level-properties text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="2" text:bullet-char="●">
            <style:list-level-properties text:space-before="0.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="3" text:bullet-char="●">
            <style:list-level-properties text:space-before="1.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="4" text:bullet-char="●">
            <style:list-level-properties text:space-before="1.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="5" text:bullet-char="●">
            <style:list-level-properties text:space-before="2.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="6" text:bullet-char="●">
            <style:list-level-properties text:space-before="3cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="7" text:bullet-char="●">
            <style:list-level-properties text:space-before="3.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="8" text:bullet-char="●">
            <style:list-level-properties text:space-before="4.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="9" text:bullet-char="●">
            <style:list-level-properties text:space-before="4.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="10" text:bullet-char="●">
            <style:list-level-properties text:space-before="5.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
        </text:list-style>
      </style:graphic-properties>
      <style:paragraph-properties fo:margin-left="0cm" fo:margin-right="0cm" fo:margin-top="0cm" fo:margin-bottom="0cm" fo:line-height="100%" fo:text-indent="0cm"/>
      <style:text-properties style:use-window-font-color="true" style:text-outline="false" style:text-line-through-style="none" fo:font-family="'Liberation Sans'" style:font-family-generic="roman" style:font-pitch="variable" fo:font-size="18pt" fo:font-style="normal" fo:text-shadow="none" style:text-underline-style="none" fo:font-weight="normal" style:letter-kerning="true" style:font-family-asian="'WenQuanYi Micro Hei'" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-size-asian="18pt" style:font-style-asian="normal" style:font-weight-asian="normal" style:font-family-complex="'Lohit Hindi'" style:font-family-generic-complex="system" style:font-pitch-complex="variable" style:font-size-complex="18pt" style:font-style-complex="normal" style:font-weight-complex="normal" style:text-emphasize="none" style:font-relief="none" style:text-overline-style="none" style:text-overline-color="font-color"/>
    </style:style>
    <style:style style:name="objectwitharrow" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="solid" svg:stroke-width="0.15cm" svg:stroke-color="#000000" draw:marker-start="Arrow" draw:marker-start-width="0.7cm" draw:marker-start-center="true" draw:marker-end-width="0.3cm"/>
    </style:style>
    <style:style style:name="objectwithshadow" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:shadow="visible" draw:shadow-offset-x="0.2cm" draw:shadow-offset-y="0.2cm" draw:shadow-color="#808080"/>
    </style:style>
    <style:style style:name="objectwithoutfill" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties svg:stroke-color="#000000" draw:fill="none"/>
    </style:style>
    <style:style style:name="text" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
    </style:style>
    <style:style style:name="textbody" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:text-properties fo:font-size="16pt"/>
    </style:style>
    <style:style style:name="textbodyjustfied" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:paragraph-properties fo:text-align="justify"/>
    </style:style>
    <style:style style:name="textbodyindent" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:paragraph-properties fo:margin-left="0cm" fo:margin-right="0cm" fo:text-indent="0.6cm"/>
    </style:style>
    <style:style style:name="title" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:text-properties fo:font-size="44pt"/>
    </style:style>
    <style:style style:name="title1" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="solid" draw:fill-color="#008080" draw:shadow="visible" draw:shadow-offset-x="0.2cm" draw:shadow-offset-y="0.2cm" draw:shadow-color="#808080"/>
      <style:paragraph-properties fo:text-align="center"/>
      <style:text-properties fo:font-size="24pt"/>
    </style:style>
    <style:style style:name="title2" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties svg:stroke-width="0.05cm" draw:fill-color="#ffcc99" draw:shadow="visible" draw:shadow-offset-x="0.2cm" draw:shadow-offset-y="0.2cm" draw:shadow-color="#808080"/>
      <style:paragraph-properties fo:margin-left="0cm" fo:margin-right="0.2cm" fo:margin-top="0.1cm" fo:margin-bottom="0.1cm" fo:text-align="center" fo:text-indent="0cm"/>
      <style:text-properties fo:font-size="36pt"/>
    </style:style>
    <style:style style:name="headline" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:paragraph-properties fo:margin-top="0.42cm" fo:margin-bottom="0.21cm"/>
      <style:text-properties fo:font-size="24pt"/>
    </style:style>
    <style:style style:name="headline1" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:paragraph-properties fo:margin-top="0.42cm" fo:margin-bottom="0.21cm"/>
      <style:text-properties fo:font-size="18pt" fo:font-weight="bold"/>
    </style:style>
    <style:style style:name="headline2" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:paragraph-properties fo:margin-top="0.42cm" fo:margin-bottom="0.21cm"/>
      <style:text-properties fo:font-size="14pt" fo:font-style="italic" fo:font-weight="bold"/>
    </style:style>
    <style:style style:name="measure" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="solid" svg:stroke-color="#000000" draw:marker-start="Arrow" draw:marker-start-width="0.2cm" draw:marker-end="Arrow" draw:marker-end-width="0.2cm" draw:fill="none" draw:show-unit="true"/>
      <style:text-properties fo:font-size="12pt"/>
    </style:style>
    <style:style style:name="Default-background" style:family="presentation">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:text-properties style:letter-kerning="true"/>
    </style:style>
    <style:style style:name="Default-backgroundobjects" style:family="presentation">
      <style:graphic-properties draw:textarea-horizontal-align="justify" draw:shadow="hidden" draw:shadow-offset-x="0.2cm" draw:shadow-offset-y="0.2cm" draw:shadow-color="#808080"/>
      <style:text-properties style:letter-kerning="true"/>
    </style:style>
    <style:style style:name="Default-notes" style:family="presentation">
      <style:graphic-properties draw:stroke="none" draw:fill="none"/>
      <style:paragraph-properties fo:margin-left="0.6cm" fo:margin-right="0cm" fo:text-indent="-0.6cm"/>
      <style:text-properties style:use-window-font-color="true" style:text-outline="false" style:text-line-through-style="none" fo:font-family="'Liberation Sans'" style:font-family-generic="roman" style:font-pitch="variable" fo:font-size="20pt" fo:font-style="normal" fo:text-shadow="none" style:text-underline-style="none" fo:font-weight="normal" style:letter-kerning="true" style:font-family-asian="'WenQuanYi Micro Hei'" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-size-asian="20pt" style:font-style-asian="normal" style:font-weight-asian="normal" style:font-family-complex="'Lohit Hindi'" style:font-family-generic-complex="system" style:font-pitch-complex="variable" style:font-size-complex="20pt" style:font-style-complex="normal" style:font-weight-complex="normal" style:text-emphasize="none" style:font-relief="none" style:text-overline-style="none" style:text-overline-color="font-color"/>
    </style:style>
    <style:style style:name="Default-outline1" style:family="presentation">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:auto-grow-height="false" draw:fit-to-size="shrink-to-fit">
        <text:list-style style:name="Default-outline1">
          <text:list-level-style-bullet text:level="1" text:bullet-char="●">
            <style:list-level-properties text:space-before="0.3cm" text:min-label-width="0.9cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="2" text:bullet-char="–">
            <style:list-level-properties text:space-before="1.5cm" text:min-label-width="0.9cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="75%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="3" text:bullet-char="●">
            <style:list-level-properties text:space-before="2.8cm" text:min-label-width="0.8cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="4" text:bullet-char="–">
            <style:list-level-properties text:space-before="4.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="75%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="5" text:bullet-char="●">
            <style:list-level-properties text:space-before="5.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="6" text:bullet-char="●">
            <style:list-level-properties text:space-before="6.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="7" text:bullet-char="●">
            <style:list-level-properties text:space-before="7.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="8" text:bullet-char="●">
            <style:list-level-properties text:space-before="9cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="9" text:bullet-char="●">
            <style:list-level-properties text:space-before="10.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="10" text:bullet-char="●">
            <style:list-level-properties text:space-before="11.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
        </text:list-style>
      </style:graphic-properties>
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.5cm"/>
      <style:text-properties style:use-window-font-color="true" style:text-outline="false" style:text-line-through-style="none" fo:font-family="'Liberation Sans'" style:font-family-generic="roman" style:font-pitch="variable" fo:font-size="32pt" fo:font-style="normal" fo:text-shadow="none" style:text-underline-style="none" fo:font-weight="normal" style:letter-kerning="true" style:font-family-asian="'WenQuanYi Micro Hei'" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-size-asian="32pt" style:font-style-asian="normal" style:font-weight-asian="normal" style:font-family-complex="'Lohit Hindi'" style:font-family-generic-complex="system" style:font-pitch-complex="variable" style:font-size-complex="32pt" style:font-style-complex="normal" style:font-weight-complex="normal" style:text-emphasize="none" style:font-relief="none" style:text-overline-style="none" style:text-overline-color="font-color"/>
    </style:style>
    <style:style style:name="Default-outline2" style:family="presentation" style:parent-style-name="Default-outline1">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.4cm"/>
      <style:text-properties fo:font-size="28pt" style:font-size-asian="28pt" style:font-size-complex="28pt"/>
    </style:style>
    <style:style style:name="Default-outline3" style:family="presentation" style:parent-style-name="Default-outline2">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.3cm"/>
      <style:text-properties fo:font-size="24pt" style:font-size-asian="24pt" style:font-size-complex="24pt"/>
    </style:style>
    <style:style style:name="Default-outline4" style:family="presentation" style:parent-style-name="Default-outline3">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.2cm"/>
      <style:text-properties fo:font-size="20pt" style:font-size-asian="20pt" style:font-size-complex="20pt"/>
    </style:style>
    <style:style style:name="Default-outline5" style:family="presentation" style:parent-style-name="Default-outline4">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.1cm"/>
      <style:text-properties fo:font-size="20pt" style:font-size-asian="20pt" style:font-size-complex="20pt"/>
    </style:style>
    <style:style style:name="Default-outline6" style:family="presentation" style:parent-style-name="Default-outline5">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.1cm"/>
      <style:text-properties fo:font-size="20pt" style:font-size-asian="20pt" style:font-size-complex="20pt"/>
    </style:style>
    <style:style style:name="Default-outline7" style:family="presentation" style:parent-style-name="Default-outline6">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.1cm"/>
      <style:text-properties fo:font-size="20pt" style:font-size-asian="20pt" style:font-size-complex="20pt"/>
    </style:style>
    <style:style style:name="Default-outline8" style:family="presentation" style:parent-style-name="Default-outline7">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.1cm"/>
      <style:text-properties fo:font-size="20pt" style:font-size-asian="20pt" style:font-size-complex="20pt"/>
    </style:style>
    <style:style style:name="Default-outline9" style:family="presentation" style:parent-style-name="Default-outline8">
      <style:paragraph-properties fo:margin-top="0cm" fo:margin-bottom="0.1cm"/>
      <style:text-properties fo:font-size="20pt" style:font-size-asian="20pt" style:font-size-complex="20pt"/>
    </style:style>
    <style:style style:name="Default-subtitle" style:family="presentation">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:textarea-vertical-align="middle">
        <text:list-style style:name="Default-subtitle">
          <text:list-level-style-bullet text:level="1" text:bullet-char="●">
            <style:list-level-properties/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="2" text:bullet-char="●">
            <style:list-level-properties text:space-before="0.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="3" text:bullet-char="●">
            <style:list-level-properties text:space-before="1.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="4" text:bullet-char="●">
            <style:list-level-properties text:space-before="1.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="5" text:bullet-char="●">
            <style:list-level-properties text:space-before="2.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="6" text:bullet-char="●">
            <style:list-level-properties text:space-before="3cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="7" text:bullet-char="●">
            <style:list-level-properties text:space-before="3.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="8" text:bullet-char="●">
            <style:list-level-properties text:space-before="4.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="9" text:bullet-char="●">
            <style:list-level-properties text:space-before="4.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="10" text:bullet-char="●">
            <style:list-level-properties text:space-before="5.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
        </text:list-style>
      </style:graphic-properties>
      <style:paragraph-properties fo:margin-left="0cm" fo:margin-right="0cm" fo:text-align="center" fo:text-indent="0cm"/>
      <style:text-properties style:use-window-font-color="true" style:text-outline="false" style:text-line-through-style="none" fo:font-family="'Liberation Sans'" style:font-family-generic="roman" style:font-pitch="variable" fo:font-size="32pt" fo:font-style="normal" fo:text-shadow="none" style:text-underline-style="none" fo:font-weight="normal" style:letter-kerning="true" style:font-family-asian="'WenQuanYi Micro Hei'" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-size-asian="32pt" style:font-style-asian="normal" style:font-weight-asian="normal" style:font-family-complex="'Lohit Hindi'" style:font-family-generic-complex="system" style:font-pitch-complex="variable" style:font-size-complex="32pt" style:font-style-complex="normal" style:font-weight-complex="normal" style:text-emphasize="none" style:font-relief="none" style:text-overline-style="none" style:text-overline-color="font-color"/>
    </style:style>
    <style:style style:name="Default-title" style:family="presentation">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:textarea-vertical-align="middle">
        <text:list-style style:name="Default-title">
          <text:list-level-style-bullet text:level="1" text:bullet-char="●">
            <style:list-level-properties/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="2" text:bullet-char="●">
            <style:list-level-properties text:space-before="0.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="3" text:bullet-char="●">
            <style:list-level-properties text:space-before="1.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="4" text:bullet-char="●">
            <style:list-level-properties text:space-before="1.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="5" text:bullet-char="●">
            <style:list-level-properties text:space-before="2.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="6" text:bullet-char="●">
            <style:list-level-properties text:space-before="3cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="7" text:bullet-char="●">
            <style:list-level-properties text:space-before="3.6cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="8" text:bullet-char="●">
            <style:list-level-properties text:space-before="4.2cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="9" text:bullet-char="●">
            <style:list-level-properties text:space-before="4.8cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
          <text:list-level-style-bullet text:level="10" text:bullet-char="●">
            <style:list-level-properties text:space-before="5.4cm" text:min-label-width="0.6cm"/>
            <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
          </text:list-level-style-bullet>
        </text:list-style>
      </style:graphic-properties>
      <style:paragraph-properties fo:text-align="center"/>
      <style:text-properties style:use-window-font-color="true" style:text-outline="false" style:text-line-through-style="none" fo:font-family="'Liberation Sans'" style:font-family-generic="roman" style:font-pitch="variable" fo:font-size="44pt" fo:font-style="normal" fo:text-shadow="none" style:text-underline-style="none" fo:font-weight="normal" style:letter-kerning="true" style:font-family-asian="'WenQuanYi Micro Hei'" style:font-family-generic-asian="system" style:font-pitch-asian="variable" style:font-size-asian="44pt" style:font-style-asian="normal" style:font-weight-asian="normal" style:font-family-complex="'Lohit Hindi'" style:font-family-generic-complex="system" style:font-pitch-complex="variable" style:font-size-complex="44pt" style:font-style-complex="normal" style:font-weight-complex="normal" style:text-emphasize="none" style:font-relief="none" style:text-overline-style="none" style:text-overline-color="font-color"/>
    </style:style>
    <style:presentation-page-layout style:name="AL0T26">
      <presentation:placeholder presentation:object="handout" svg:x="2.057cm" svg:y="1.743cm" svg:width="10.555cm" svg:height="-0.233cm"/>
      <presentation:placeholder presentation:object="handout" svg:x="15.412cm" svg:y="1.743cm" svg:width="10.555cm" svg:height="-0.233cm"/>
      <presentation:placeholder presentation:object="handout" svg:x="2.057cm" svg:y="3.612cm" svg:width="10.555cm" svg:height="-0.233cm"/>
      <presentation:placeholder presentation:object="handout" svg:x="15.412cm" svg:y="3.612cm" svg:width="10.555cm" svg:height="-0.233cm"/>
      <presentation:placeholder presentation:object="handout" svg:x="2.057cm" svg:y="5.481cm" svg:width="10.555cm" svg:height="-0.233cm"/>
      <presentation:placeholder presentation:object="handout" svg:x="15.412cm" svg:y="5.481cm" svg:width="10.555cm" svg:height="-0.233cm"/>
    </style:presentation-page-layout>
    <style:presentation-page-layout style:name="AL1T0">
      <presentation:placeholder presentation:object="title" svg:x="2.057cm" svg:y="1.743cm" svg:width="23.911cm" svg:height="3.507cm"/>
      <presentation:placeholder presentation:object="subtitle" svg:x="2.057cm" svg:y="5.838cm" svg:width="23.911cm" svg:height="13.23cm"/>
    </style:presentation-page-layout>
    <style:presentation-page-layout style:name="AL2T1">
      <presentation:placeholder presentation:object="title" svg:x="2.057cm" svg:y="1.743cm" svg:width="23.911cm" svg:height="3.507cm"/>
      <presentation:placeholder presentation:object="outline" svg:x="2.057cm" svg:y="5.838cm" svg:width="23.911cm" svg:height="13.23cm"/>
    </style:presentation-page-layout>
  </office:styles>
  <office:automatic-styles>
    <style:page-layout style:name="PM0">
      <style:page-layout-properties fo:margin-top="0cm" fo:margin-bottom="0cm" fo:margin-left="0cm" fo:margin-right="0cm" fo:page-width="21.59cm" fo:page-height="27.94cm" style:print-orientation="portrait"/>
    </style:page-layout>
    <style:page-layout style:name="PM1">
      <style:page-layout-properties fo:margin-top="0cm" fo:margin-bottom="0cm" fo:margin-left="0cm" fo:margin-right="0cm" fo:page-width="28cm" fo:page-height="21cm" style:print-orientation="landscape"/>
    </style:page-layout>
    <style:style style:name="Mdp1" style:family="drawing-page">
      <style:drawing-page-properties draw:background-size="border" draw:fill="none"/>
    </style:style>
    <style:style style:name="Mdp2" style:family="drawing-page">
      <style:drawing-page-properties presentation:display-header="true" presentation:display-footer="true" presentation:display-page-number="false" presentation:display-date-time="true"/>
    </style:style>
    <style:style style:name="Mgr1" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:fill-color="#ffffff" draw:auto-grow-height="false" fo:min-height="1.397cm"/>
    </style:style>
    <style:style style:name="Mgr2" style:family="graphic" style:parent-style-name="standard">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:fill-color="#ffffff" draw:textarea-vertical-align="bottom" draw:auto-grow-height="false" fo:min-height="1.397cm"/>
    </style:style>
    <style:style style:name="Mpr1" style:family="presentation" style:parent-style-name="Default-backgroundobjects">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:fill-color="#ffffff" draw:auto-grow-height="false" fo:min-height="1.449cm"/>
    </style:style>
    <style:style style:name="Mpr2" style:family="presentation" style:parent-style-name="Default-backgroundobjects">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:fill-color="#ffffff" draw:auto-grow-height="false" fo:min-height="1.397cm"/>
    </style:style>
    <style:style style:name="Mpr3" style:family="presentation" style:parent-style-name="Default-backgroundobjects">
      <style:graphic-properties draw:stroke="none" draw:fill="none" draw:fill-color="#ffffff" draw:textarea-vertical-align="bottom" draw:auto-grow-height="false" fo:min-height="1.397cm"/>
    </style:style>
    <style:style style:name="MP1" style:family="paragraph">
      <style:text-properties fo:font-size="14pt" style:font-size-asian="14pt" style:font-size-complex="14pt"/>
    </style:style>
    <style:style style:name="MP2" style:family="paragraph">
      <style:paragraph-properties fo:text-align="end"/>
      <style:text-properties fo:font-size="14pt" style:font-size-asian="14pt" style:font-size-complex="14pt"/>
    </style:style>
    <style:style style:name="MP3" style:family="paragraph">
      <style:paragraph-properties fo:text-align="center"/>
      <style:text-properties fo:font-size="14pt" style:font-size-asian="14pt" style:font-size-complex="14pt"/>
    </style:style>
    <text:list-style style:name="ML1">
      <text:list-level-style-bullet text:level="1" text:bullet-char="●">
        <style:list-level-properties text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="2" text:bullet-char="●">
        <style:list-level-properties text:space-before="0.6cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="3" text:bullet-char="●">
        <style:list-level-properties text:space-before="1.2cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="4" text:bullet-char="●">
        <style:list-level-properties text:space-before="1.8cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="5" text:bullet-char="●">
        <style:list-level-properties text:space-before="2.4cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="6" text:bullet-char="●">
        <style:list-level-properties text:space-before="3cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="7" text:bullet-char="●">
        <style:list-level-properties text:space-before="3.6cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="8" text:bullet-char="●">
        <style:list-level-properties text:space-before="4.2cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="9" text:bullet-char="●">
        <style:list-level-properties text:space-before="4.8cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="10" text:bullet-char="●">
        <style:list-level-properties text:space-before="5.4cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
    </text:list-style>
    <text:list-style style:name="ML2">
      <text:list-level-style-bullet text:level="1" text:bullet-char="●">
        <style:list-level-properties/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="2" text:bullet-char="●">
        <style:list-level-properties text:space-before="0.6cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="3" text:bullet-char="●">
        <style:list-level-properties text:space-before="1.2cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="4" text:bullet-char="●">
        <style:list-level-properties text:space-before="1.8cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="5" text:bullet-char="●">
        <style:list-level-properties text:space-before="2.4cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="6" text:bullet-char="●">
        <style:list-level-properties text:space-before="3cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="7" text:bullet-char="●">
        <style:list-level-properties text:space-before="3.6cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="8" text:bullet-char="●">
        <style:list-level-properties text:space-before="4.2cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="9" text:bullet-char="●">
        <style:list-level-properties text:space-before="4.8cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
      <text:list-level-style-bullet text:level="10" text:bullet-char="●">
        <style:list-level-properties text:space-before="5.4cm" text:min-label-width="0.6cm"/>
        <style:text-properties fo:font-family="StarSymbol" style:use-window-font-color="true" fo:font-size="45%"/>
      </text:list-level-style-bullet>
    </text:list-style>
  </office:automatic-styles>
  <office:master-styles>
    <draw:layer-set>
      <draw:layer draw:name="layout"/>
      <draw:layer draw:name="background"/>
      <draw:layer draw:name="backgroundobjects"/>
      <draw:layer draw:name="controls"/>
      <draw:layer draw:name="measurelines"/>
    </draw:layer-set>
    <style:handout-master presentation:presentation-page-layout-name="AL0T26" style:page-layout-name="PM0" draw:style-name="Mdp2">
      <draw:frame draw:style-name="Mgr1" draw:text-style-name="MP1" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="0cm" svg:y="0cm" presentation:class="header">
        <draw:text-box>
          <text:p text:style-name="MP1">
            <presentation:header/>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <draw:frame draw:style-name="Mgr1" draw:text-style-name="MP2" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="12.22cm" svg:y="0cm" presentation:class="date-time">
        <draw:text-box>
          <text:p text:style-name="MP2">
            <presentation:date-time/>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <draw:frame draw:style-name="Mgr2" draw:text-style-name="MP1" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="0cm" svg:y="26.543cm" presentation:class="footer">
        <draw:text-box>
          <text:p text:style-name="MP1">
            <presentation:footer/>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <draw:frame draw:style-name="Mgr2" draw:text-style-name="MP2" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="12.22cm" svg:y="26.543cm" presentation:class="page-number">
        <draw:text-box>
          <text:p text:style-name="MP2">
            <text:page-number>&lt;number&gt;</text:page-number>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <draw:page-thumbnail draw:layer="backgroundobjects" svg:width="9.294cm" svg:height="6.97cm" svg:x="1cm" svg:y="2.435cm"/>
      <draw:page-thumbnail draw:layer="backgroundobjects" svg:width="9.294cm" svg:height="6.97cm" svg:x="1cm" svg:y="10.483cm"/>
      <draw:page-thumbnail draw:layer="backgroundobjects" svg:width="9.294cm" svg:height="6.97cm" svg:x="1cm" svg:y="18.531cm"/>
      <draw:page-thumbnail draw:layer="backgroundobjects" svg:width="9.294cm" svg:height="6.97cm" svg:x="11.295cm" svg:y="2.435cm"/>
      <draw:page-thumbnail draw:layer="backgroundobjects" svg:width="9.294cm" svg:height="6.97cm" svg:x="11.295cm" svg:y="10.483cm"/>
      <draw:page-thumbnail draw:layer="backgroundobjects" svg:width="9.294cm" svg:height="6.97cm" svg:x="11.295cm" svg:y="18.531cm"/>
    </style:handout-master>
    <style:master-page style:name="Default" style:page-layout-name="PM1" draw:style-name="Mdp1">
      <draw:frame presentation:style-name="Default-title" draw:layer="backgroundobjects" svg:width="25.199cm" svg:height="3.506cm" svg:x="1.4cm" svg:y="0.837cm" presentation:class="title" presentation:placeholder="true">
        <draw:text-box/>
      </draw:frame>
      <draw:frame presentation:style-name="Default-outline1" draw:layer="backgroundobjects" svg:width="24.639cm" svg:height="12.178cm" svg:x="1.4cm" svg:y="4.914cm" presentation:class="outline" presentation:placeholder="true">
        <draw:text-box/>
      </draw:frame>
      <draw:frame presentation:style-name="Mpr1" draw:text-style-name="MP1" draw:layer="backgroundobjects" svg:width="6.523cm" svg:height="1.448cm" svg:x="1.4cm" svg:y="19.131cm" presentation:class="date-time">
        <draw:text-box>
          <text:p text:style-name="MP1">
            <presentation:date-time/>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <draw:frame presentation:style-name="Mpr1" draw:text-style-name="MP3" draw:layer="backgroundobjects" svg:width="8.875cm" svg:height="1.448cm" svg:x="9.576cm" svg:y="19.131cm" presentation:class="footer">
        <draw:text-box>
          <text:p text:style-name="MP3">
            <presentation:footer/>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <draw:frame presentation:style-name="Mpr1" draw:text-style-name="MP2" draw:layer="backgroundobjects" svg:width="6.523cm" svg:height="1.448cm" svg:x="20.075cm" svg:y="19.131cm" presentation:class="page-number">
        <draw:text-box>
          <text:p text:style-name="MP2">
            <text:page-number>&lt;number&gt;</text:page-number>
          </text:p>
        </draw:text-box>
      </draw:frame>
      <presentation:notes style:page-layout-name="PM0">
        <draw:page-thumbnail presentation:style-name="Default-title" draw:layer="backgroundobjects" svg:width="13.968cm" svg:height="10.476cm" svg:x="3.81cm" svg:y="2.123cm" presentation:class="page"/>
        <draw:frame presentation:style-name="Default-notes" draw:layer="backgroundobjects" svg:width="17.271cm" svg:height="12.572cm" svg:x="2.159cm" svg:y="13.271cm" presentation:class="notes" presentation:placeholder="true">
          <draw:text-box/>
        </draw:frame>
        <draw:frame presentation:style-name="Mpr2" draw:text-style-name="MP1" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="0cm" svg:y="0cm" presentation:class="header">
          <draw:text-box>
            <text:p text:style-name="MP1">
              <presentation:header/>
            </text:p>
          </draw:text-box>
        </draw:frame>
        <draw:frame presentation:style-name="Mpr2" draw:text-style-name="MP2" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="12.22cm" svg:y="0cm" presentation:class="date-time">
          <draw:text-box>
            <text:p text:style-name="MP2">
              <presentation:date-time/>
            </text:p>
          </draw:text-box>
        </draw:frame>
        <draw:frame presentation:style-name="Mpr3" draw:text-style-name="MP1" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="0cm" svg:y="26.543cm" presentation:class="footer">
          <draw:text-box>
            <text:p text:style-name="MP1">
              <presentation:footer/>
            </text:p>
          </draw:text-box>
        </draw:frame>
        <draw:frame presentation:style-name="Mpr3" draw:text-style-name="MP2" draw:layer="backgroundobjects" svg:width="9.369cm" svg:height="1.396cm" svg:x="12.22cm" svg:y="26.543cm" presentation:class="page-number">
          <draw:text-box>
            <text:p text:style-name="MP2">
              <text:page-number>&lt;number&gt;</text:page-number>
            </text:p>
          </draw:text-box>
        </draw:frame>
      </presentation:notes>
    </style:master-page>
  </office:master-styles>
</office:document-styles>
</xsl:template>
</xsl:stylesheet>
