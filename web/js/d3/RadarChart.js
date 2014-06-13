function RadarChart(area, data, options) {
    var cnfg = {
        marginTop: 20,
        marginRight: 20,
        marginBottom: 40,
        marginLeft: 50,
        w: 600,
        h: 600,
        factor: 1,
        factorLegend: .85,
        levels: 3,
        maxValue: 0,
        radians: 2 * Math.PI,
        opacityArea: 0.5,
        ToRight: 5,
        TranslateX: 80,
        TranslateY: 30,
        ExtraWidthX: 100,
        ExtraWidthY: 100,
        valuePrecision: 2,
        colors: ["#3366CC", "#DC3912", "#FF9900", "#109618", "#990099", "#0099C6", "#DD4477", "#AAAA11", "#E67300", "#B77322", "#16D620"]
    };

    if ('undefined' !== typeof options) {
        for (var i in options) {
            if ('undefined' !== typeof options[i]) {
                cnfg[i] = options[i];
            }
        }
    }

    var color = d3.scale.ordinal()
            .range(cnfg.colors);

    var legendHeight = 50;
    if (legendHeight > cnfg.TranslateY) {
        cnfg.TranslateY = legendHeight;
    }

    var areaId = area.charAt(0) === "#" ? area : "#" + area;
    var chartMargin = {top: cnfg.marginTop, right: cnfg.marginRight, bottom: cnfg.marginBottom, left: cnfg.marginLeft};

    this.globalRadarNum = globalRadarNumber++;

    $("body").append('<div id="radar-tooltip' + this.globalRadarNum + '"></div>');
    $("#radar-tooltip" + this.globalRadarNum).css({"position": "absolute", "background": "rgba(0, 0, 0, 0.8)", "color": "white", "font-family": "Arial", "font-size": "14px", "font-weight": "lighter", "z-index": "100", "pointer-events": "none"});
    $("#radar-tooltip" + this.globalRadarNum).append('<div id="radar-tooltip-content' + this.globalRadarNum + '" style="padding: 5px 10px 5px 10px;">');
    $("#radar-tooltip-content" + this.globalRadarNum).append('<span id="radar-tooltip-title' + this.globalRadarNum + '" style="font-size: 20px;">title of tooltip</span><br/>');
    $("#radar-tooltip-content" + this.globalRadarNum).append('<span id="radar-tooltip-desc' + this.globalRadarNum + '" style="font-size: 12px;">desc of tooltip</span><br/>');
    $("#radar-tooltip-content" + this.globalRadarNum).append('<span id="radar-tooltip-value' + this.globalRadarNum + '" style="font-size: 16px;">12</span>');

    $("#radar-tooltip" + this.globalRadarNum).append('<svg style="position: absolute; width: 12px; height: 12px;"><polygon points="0,0 12,0 6,10" style="background: black; fill: rgba(0, 0, 0, 0.8);"></polygon></svg>');

    $("#radar-tooltip" + this.globalRadarNum).hide();

    this.dataArray = data;

    this.setData = function(newData) {
        this.dataArray = newData;
    };

    this.draw = function() {
        d3.select(areaId).select("svg").remove();
        var radarNum = this.globalRadarNum;
        var dataArray = this.dataArray;

//        cnfg.maxValue = Math.max(cnfg.maxValue, d3.max(dataArray, function(i) {
//            return d3.max(i.map(function(o) {
//                return o.value;
//            }));
//        }));
        var radarMaxValue = Math.max(cnfg.maxValue, d3.max(dataArray.map(function(d1) {
            return d3.max(d1.data.map(function(d2) {
                return d2.value;
            }));
        })));
//        var allAxis = (dataArray[0].map(function(i, j) {
//            return i.axis;
//        }));
        var allAxis = dataArray[0].data.map(function(d1) {
            return d1.axis;
        });

        var total = allAxis.length;
        var radius = cnfg.factor * Math.min(cnfg.w / 2, cnfg.h / 2);

        var svg = d3.select(areaId)
                .append("svg")
                .attr("width", cnfg.w + cnfg.ExtraWidthX)
                .attr("height", cnfg.h + cnfg.ExtraWidthY);
        var radarChartGroup = svg.append("g")
                .attr("transform", "translate(" + cnfg.TranslateX + "," + cnfg.TranslateY + ")");

        //var tooltip;

        //Circular segments
        for (var j = 0; j < cnfg.levels; j++) { // removed -1 at j<cfg.levels - 1
            var levelFactor = cnfg.factor * radius * ((j + 1) / cnfg.levels);
            radarChartGroup.selectAll(".levels")
                    .data(allAxis)
                    .enter()
                    .append("svg:line")
                    .attr("x1", function(d, i) {
                        return levelFactor * (1 - cnfg.factor * Math.sin(i * cnfg.radians / total));
                    })
                    .attr("y1", function(d, i) {
                        return levelFactor * (1 - cnfg.factor * Math.cos(i * cnfg.radians / total));
                    })
                    .attr("x2", function(d, i) {
                        return levelFactor * (1 - cnfg.factor * Math.sin((i + 1) * cnfg.radians / total));
                    })
                    .attr("y2", function(d, i) {
                        return levelFactor * (1 - cnfg.factor * Math.cos((i + 1) * cnfg.radians / total));
                    })
                    .attr("class", "line")
                    .style("stroke", "grey")
                    .style("stroke-opacity", "0.75")
                    .style("stroke-width", "0.3px")
                    .attr("transform", "translate(" + (cnfg.w / 2 - levelFactor) + ", " + (cnfg.h / 2 - levelFactor) + ")");
        }

        //Text indicating at what % each level is
        for (var j = 0; j < cnfg.levels; j++) {
            var levelFactor = cnfg.factor * radius * ((j + 1) / cnfg.levels);
            var axisValue = ((j + 1) * radarMaxValue / cnfg.levels).toFixed(cnfg.valuePrecision);
            axisValue = +axisValue; // drops any "extra" zeroes at the end
            radarChartGroup.selectAll(".levels")
                    .data([1]) //dummy data
                    .enter()
                    .append("svg:text")
                    .attr("x", function(d) {
                        return levelFactor * (1 - cnfg.factor * Math.sin(0));
                    })
                    .attr("y", function(d) {
                        return levelFactor * (1 - cnfg.factor * Math.cos(0));
                    })
                    .attr("class", "legend")
                    .style("font-family", "sans-serif")
                    .style("font-size", "10px")
                    .attr("transform", "translate(" + (cnfg.w / 2 - levelFactor + cnfg.ToRight) + ", " + (cnfg.h / 2 - levelFactor) + ")")
                    .attr("fill", "#737373")
                    .text(axisValue);
        }

        series = 0;

        var axis = radarChartGroup.selectAll(".axis")
                .data(allAxis)
                .enter()
                .append("g")
                .attr("class", "axis");

        axis.append("line")
                .attr("x1", cnfg.w / 2)
                .attr("y1", cnfg.h / 2)
                .attr("x2", function(d, i) {
                    return cnfg.w / 2 * (1 - cnfg.factor * Math.sin(i * cnfg.radians / total));
                })
                .attr("y2", function(d, i) {
                    return cnfg.h / 2 * (1 - cnfg.factor * Math.cos(i * cnfg.radians / total));
                })
                .attr("class", "line")
                .style("stroke", "grey")
                .style("stroke-width", "1px");

        axis.append("text")
                .attr("class", "legend")
                .text(function(d) {
                    return d;
                })
                .style("font-family", "sans-serif")
                .style("font-size", "11px")
                .attr("text-anchor", function(data, i) {
                    if (i === 0) {
                        return "middle";
                    } else {
                        var rmndr = dataArray[0].data.length % 2;
                        if (rmndr === 0) {
                            if (i < (dataArray[0].data.length / 2)) {
                                return "end";
                            } else if (i === (dataArray[0].data.length / 2)) {
                                return "middle";
                            } else {
                                return "start";
                            }
                        } else {
                            if (i <= (dataArray[0].data.length / 2)) {
                                return "end";
                            } else {
                                return "start";
                            }
                        }
                    }
                })
                .attr("dy", "1.5em")
                .attr("transform", function(d, i) {
                    return "translate(0, -10)";
                })
                .attr("x", function(d, i) {
                    return cnfg.w / 2 * (1 - cnfg.factorLegend * Math.sin(i * cnfg.radians / total)) - 5 * Math.sin(i * cnfg.radians / total);
                    //return cfg.w/2*(1-cfg.factorLegend*Math.sin(i*cfg.radians/total))-60*Math.sin(i*cfg.radians/total);
                })
                .attr("y", function(d, i) {
                    return cnfg.h / 2 * (1 - Math.cos(i * cnfg.radians / total)) - 20 * Math.cos(i * cnfg.radians / total);
                });

        dataArray.forEach(function(y, x) {
            dataValues = [];
            radarChartGroup.selectAll(".nodes")
                    .data(y.data, function(j, i) {
                        dataValues.push([
                            cnfg.w / 2 * (1 - (parseFloat(Math.max(j.value, 0)) / radarMaxValue) * cnfg.factor * Math.sin(i * cnfg.radians / total)),
                            cnfg.h / 2 * (1 - (parseFloat(Math.max(j.value, 0)) / radarMaxValue) * cnfg.factor * Math.cos(i * cnfg.radians / total))
                        ]);
                    });
            dataValues.push(dataValues[0]);
            var polygons = radarChartGroup.selectAll(".area")
                    .data([dataValues])
                    .enter()
                    .append("polygon")
                    .attr("class", "radar-chart-serie" + series)
                    .style("stroke-width", "3px")
                    .style("stroke", color(series))
                    .attr("points", function(d) {
                        var str = "";
                        for (var pti = 0; pti < d.length; pti++) {
                            str = str + cnfg.w / 2 + "," + cnfg.h / 2 + " ";
                        }
                        return str;
                    })
                    .style("fill", function(j, i) {
                        return color(series);
                    })
                    .style("fill-opacity", cnfg.opacityArea);
            polygons.transition()
                    .duration(400)
                    .attr("points", function(d) {
                        var str = "";
                        for (var pti = 0; pti < d.length; pti++) {
                            str = str + d[pti][0] + "," + d[pti][1] + " ";
                        }
                        return str;
                    });
//            polygons
//                    .on('mouseover', function(d) {
//                        // z = "polygon."+d3.select(this).attr("class");
//                        // g.selectAll("polygon")
//                        // .transition(200)
//                        // .style("fill-opacity", 0.1); 
//                        // g.selectAll(z)
//                        // .transition(200)
//                        // .style("fill-opacity", .7);
//                    })
//                    .on('mouseout', function() {
//                        // g.selectAll("polygon")
//                        // .transition(200)
//                        // .style("fill-opacity", cfg.opacityArea);
//                    });
            series++;
        });
        series = 0;

        dataArray.forEach(function(y, x) {
            var radarPoints = radarChartGroup.selectAll(".nodes")
                    .data(y.data)
                    .enter()
                    .append("svg:circle")
                    .attr("class", "radar-chart-serie" + series)
                    .attr('r', 0)
                    .attr("alt", function(j) {
                        return Math.max(j.value, 0);
                    })
                    .attr("cx", function(j, i) {
                        dataValues.push([
                            cnfg.w / 2 * (1 - (parseFloat(Math.max(j.value, 0)) / radarMaxValue) * cnfg.factor * Math.sin(i * cnfg.radians / total)),
                            cnfg.h / 2 * (1 - (parseFloat(Math.max(j.value, 0)) / radarMaxValue) * cnfg.factor * Math.cos(i * cnfg.radians / total))
                        ]);
                        return cnfg.w / 2 * (1 - (Math.max(j.value, 0) / radarMaxValue) * cnfg.factor * Math.sin(i * cnfg.radians / total));
                    })
                    .attr("cy", function(j, i) {
                        return cnfg.h / 2 * (1 - (Math.max(j.value, 0) / radarMaxValue) * cnfg.factor * Math.cos(i * cnfg.radians / total));
                    })
                    .attr("data-id", function(j) {
                        return j.axis;
                    })
                    .attr("fill", color(series))
                    .attr("fill-opacity", 1)
                    .attr("stroke", color(series))
                    .attr("stroke-opacity", 0.2)
                    .attr("r", 0)
                    .attr("stroke-width", 0);
            radarPoints.transition()
                    .delay(200)
                    .duration(500)
                    .attr("r", 3)
                    .attr("stroke-width", 6);
            radarPoints.on('mouseover', function(d, i) {
                d3.select(this)
                        .transition()
                        .duration(250)
                        .attr("r", 8);

                var posX = d3.event.pageX - d3.mouse(this)[0] + Number(d3.select(this).attr("cx")) - 6;
                var posY = d3.event.pageY - d3.mouse(this)[1] + Number(d3.select(this).attr("cy")) - 90;

                var tipValue = (d.value).toFixed(cnfg.valuePrecision);
                tipValue = +tipValue; // drops any "extra" zeroes at the end

                d3.select("#radar-tooltip-title" + radarNum).text(function() {
                    return dataArray[x].name;
                });
                d3.select("#radar-tooltip-value" + radarNum).text(tipValue);
                d3.select("#radar-tooltip-desc" + radarNum).text(d.axis);
                d3.select("#radar-tooltip" + radarNum)
                        .transition()
                        .style("display", "block")
                        .style("left", posX + "px")
                        .style("top", posY + "px");

            })
                    .on('mouseout', function() {
                        d3.select(this)
                                .transition()
                                .duration(250)
                                .attr("r", 3);

                        d3.select("#radar-tooltip" + radarNum)
                                .transition()
                                .style("display", "none");

                    })
                    .on('click', function(d, i) {
                        console.log(d.axis + " : " + d.value + ", axisIndex: " + i);
                    })
                    //.append("svg:title")
                    .text(function(j) {
                        return Math.max(j.value, 0);
                    });

            series++;
        });

        // legend
        var radarLegendGroup = svg.append("g")
                .attr("id", "radarLegendGroup")
                .attr("transform", "translate(" + 0 + ", " + chartMargin.top + ")");

        var segmentWidth = (cnfg.w + cnfg.ExtraWidthX) / dataArray.length;
        //Create color squares
        radarLegendGroup.selectAll('rect')
                .data(dataArray)
                .enter()
                .append("rect")
                .attr("y", 0)
                .attr("width", 28)
                .attr("height", 16)
                .attr("rx", 6)
                .attr("ry", 6)
                .style("fill", function(d, i) {
                    return color(i);
                })
                .attr("x", function(d, i) {
                    return (i * segmentWidth) + (segmentWidth / 3);
                });

        //Create legend text next to squares
        radarLegendGroup.selectAll('text')
                .data(dataArray)
                .enter()
                .append("text")
                .attr("y", 13)
                .style("font-size", "14px")
                .attr("fill", "#00152E")
                .attr("class", "legendText")
                .text(function(d) {
                    return d.name;
                })
                .attr("x", function(d, i) {
                    return (i * segmentWidth) + (segmentWidth / 3) + 34;
                });

    };
}

var globalRadarNumber = 0;