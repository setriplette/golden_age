<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>The Pilgrim of Castile</title>
                <link rel="stylesheet" type="text/css" href="styleLope.css" />
                <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
                <script type="text/javascript" src="pilgrim_reading_view.js"></script>
            </head>
            <body>
                <ul class ="topnav" id="myTopnav">
                    <li><a href="/index.html">Main</a></li>
                    <li><a href="/playList.html">Plays</a></li>
                    <li><a href="/proseList.html">Prose</a></li>
                    <li><a href="/dama_boba/visualizations/dama_boba_viz.html">Data</a></li>
                    <li><a href="/people.html">People</a></li>
                    <li><a href="/places.html">Places</a></li>
                    <li><a href="/about.html">About</a></li>
                    <li><a href="/pilgrim_viz.html">Pilgrim</a></li>
                </ul>
                
                <div id="partsOfspeech">
                    <svg xmlns="http://www.w3.org/2000/svg"
                    width="850"
                    height="850"
                    viewBox="0 0 1000 1000">
                    <g transform="translate(100 750)">
                        <text x="100"
                            y="15"
                            text-anchor="end"
                            transform="rotate(-45 100, 15)"
                            style="font-size:20px"
                            font-family="Avenir">The First Book</text>
                        <text x="200"
                            y="15"
                            text-anchor="end"
                            transform="rotate(-45 200, 15)"
                            style="font-size:20px"
                            font-family="Avenir">Book Two</text>
                        <text x="300"
                            y="15"
                            text-anchor="end"
                            transform="rotate(-45 300, 15)"
                            style="font-size:20px"
                            font-family="Avenir">Book Three</text>
                        <text x="400"
                            y="15"
                            text-anchor="end"
                            transform="rotate(-45 400, 15)"
                            style="font-size:20px"
                            font-family="Avenir">Book Four</text>
                        <text color="black"
                            font-family="CenturyGothic"
                            text-anchor="middle"
                            x="400"
                            y="-650"
                            style="font-size:32px">Emotions: Different Parts of Speech</text>
                        <text color="black"
                            font-family="CenturyGothic"
                            text-anchor="middle"
                            x="400"
                            y="-600"
                            style="font-size:32px">Pilgrim of Castile</text>
                        <text y="-250"
                            x="-15"
                            color="black"
                            font-family="CenturyGothic"
                            text-anchor="middle"
                            style="font-size:18px">50%</text>
                        <text y="-500"
                            x="-15"
                            color="black"
                            font-family="CenturyGothic"
                            text-anchor="middle"
                            style="font-size:18px">100%</text>
                        <text x="600" y="-500" font-size="25px" font-family="CenturyGothic">Legend: Part of Speech</text>
                        <text x="650"
                            y="-450"
                            text-anchor="start"
                            font-size="23px"
                            fill="maroon"
                            font-family="Avenir">-Noun</text>
                        <text x="650"
                            y="-400"
                            text-anchor="start"
                            font-size="23px"
                            fill="steelblue"
                            font-family="Avenir">-Verb</text>
                        <text x="650"
                            y="-350"
                            text-anchor="start"
                            font-size="23px"
                            fill="#e8c135"
                            font-family="Avenir">-Adverb</text>
                        <text x="650"
                            y="-300"
                            text-anchor="start"
                            font-size="23px"
                            fill="#666699"
                            font-family="Avenir">-Adjective</text>
                        <!--X-axis-->
                        <line x1="30"
                            y1="0"
                            x2="500"
                            y2="0"
                            stroke="black"
                            stroke-width="2"/>
                        <!--Y-axis-->
                        <line x1="30"
                            y1="0"
                            x2="30"
                            y2="-500"
                            stroke="black"
                            stroke-width="2"/>
                        <line class="noun"
                            x1="100"
                            y1="0"
                            x2="100"
                            y2="-286.3636363636363635"
                            stroke="maroon"
                            stroke-width="50"/>
                        <line class="verb"
                            x1="100"
                            y1="-286.3636363636363635"
                            x2="100"
                            y2="-350"
                            stroke="steelblue"
                            stroke-width="50"/>
                        <line class="adverb"
                            x1="100"
                            y1="-350"
                            x2="100"
                            y2="-359.090909090909091"
                            stroke="#e8c135"
                            stroke-width="50"/>
                        <line class="adj"
                            x1="100"
                            y1="-359.090909090909091"
                            x2="100"
                            y2="-500"
                            stroke="#666699"
                            stroke-width="50"/>
                        <line class="noun"
                            x1="200"
                            y1="0"
                            x2="200"
                            y2="-292.8994082840236685"
                            stroke="maroon"
                            stroke-width="50"/>
                        <line class="verb"
                            x1="200"
                            y1="-292.8994082840236685"
                            x2="200"
                            y2="-343.195266272189349"
                            stroke="steelblue"
                            stroke-width="50"/>
                        <line class="adverb"
                            x1="200"
                            y1="-343.195266272189349"
                            x2="200"
                            y2="-357.9881656804733725"
                            stroke="#e8c135"
                            stroke-width="50"/>
                        <line class="adj"
                            x1="200"
                            y1="-357.9881656804733725"
                            x2="200"
                            y2="-499.9999999999999995"
                            stroke="#666699"
                            stroke-width="50"/>
                        <line class="noun"
                            x1="300"
                            y1="0"
                            x2="300"
                            y2="-310.810810810810811"
                            stroke="maroon"
                            stroke-width="50"/>
                        <line class="verb"
                            x1="300"
                            y1="-310.810810810810811"
                            x2="300"
                            y2="-351.3513513513513515"
                            stroke="steelblue"
                            stroke-width="50"/>
                        <line class="adverb"
                            x1="300"
                            y1="-351.3513513513513515"
                            x2="300"
                            y2="-360.3603603603603605"
                            stroke="#e8c135"
                            stroke-width="50"/>
                        <line class="adj"
                            x1="300"
                            y1="-360.3603603603603605"
                            x2="300"
                            y2="-500"
                            stroke="#666699"
                            stroke-width="50"/>
                        <line class="noun"
                            x1="400"
                            y1="0"
                            x2="400"
                            y2="-273.2919254658385095"
                            stroke="maroon"
                            stroke-width="50"/>
                        <line class="verb"
                            x1="400"
                            y1="-273.2919254658385095"
                            x2="400"
                            y2="-366.459627329192547"
                            stroke="steelblue"
                            stroke-width="50"/>
                        <line class="adverb"
                            x1="400"
                            y1="-366.459627329192547"
                            x2="400"
                            y2="-388.1987577639751555"
                            stroke="#e8c135"
                            stroke-width="50"/>
                        <line class="adj"
                            x1="400"
                            y1="-388.1987577639751555"
                            x2="400"
                            y2="-500"
                            stroke="#666699"
                            stroke-width="50"/>
                    </g>
                </svg>
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>