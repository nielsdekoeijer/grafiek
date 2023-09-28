#include <boost/property_tree/ptree.hpp>
#include <string>

#include "../element/plot.hpp"
#include "../helper/normalize.hpp"
#include "draw.hpp"
#include <cmath>
#include <iomanip>

namespace grafiek {
void addElement(boost::property_tree::ptree& svg, const Plot& element)
{
    boost::property_tree::ptree svgBorder;
    addSize(svgBorder, element.x, element.y, element.w, element.h);
    addBackground(svgBorder, element.bg);

    boost::property_tree::ptree svgPlot;
    auto wplot = element.w - 2 * element.xplot;
    auto hplot = element.h - 2 * element.yplot;
    addSize(svgPlot, element.xplot, element.yplot, wplot, hplot);
    addBackground(svgPlot, element.bgplot);

    /* ticks */
    std::size_t pxTickDivision = 50;
    std::size_t tickPrecision = 2;

    /* long ticks */
    std::size_t xnticks = std::size_t(float(wplot) / float(pxTickDivision));
    for (std::size_t i = 0; i <= xnticks; i++) {
        auto x = denormalize<float>(float(i) / float(xnticks), 0, float(wplot));
        auto y = hplot;

        /* every other tick we do a long one */
        if (i % 2 == 0) {
            boost::property_tree::ptree ticklongline;
            ticklongline.put("<xmlattr>.x1", x);
            ticklongline.put("<xmlattr>.x2", x);
            ticklongline.put("<xmlattr>.y1", y);
            ticklongline.put("<xmlattr>.y2", y - hplot);
            ticklongline.put("<xmlattr>.stroke", hex(DarkGray));
            svgPlot.add_child("line", ticklongline);
        }
    }

    std::size_t ynticks = std::size_t(float(hplot) / float(pxTickDivision));
    for (std::size_t i = 0; i <= ynticks; i++) {
        auto x = 0.0f;
        auto y = float(hplot) - denormalize<float>(float(i) / float(ynticks), 0, float(hplot));

        /* every other tick we do a long one */
        if (i % 2 == 0) {
            boost::property_tree::ptree ticklongline;
            ticklongline.put("<xmlattr>.x1", x);
            ticklongline.put("<xmlattr>.x2", x + float(wplot));
            ticklongline.put("<xmlattr>.y1", y);
            ticklongline.put("<xmlattr>.y2", y);
            ticklongline.put("<xmlattr>.stroke", hex(DarkGray));
            svgPlot.add_child("line", ticklongline);
        }
    }

    /* the line */
    boost::property_tree::ptree polyline;
    polyline.put("<xmlattr>.fill", "none");
    polyline.put("<xmlattr>.stroke", hex(Red));
    polyline.put("<xmlattr>.stroke-linecap", "round");
    polyline.put("<xmlattr>.stroke-width", "2");
    float xmax = *std::max_element(element.xdata.begin(), element.xdata.end());
    float xmin = *std::min_element(element.xdata.begin(), element.xdata.end());
    if (std::fabs(double(xmax)) < 1e-5 && std::fabs(double(xmin)) < 1e-5) {
        xmin = -1.0f;
        xmax = 1.0f;
    }

    float ymax = *std::max_element(element.ydata.begin(), element.ydata.end());
    float ymin = *std::min_element(element.ydata.begin(), element.ydata.end());
    if (std::fabs(double(ymax)) < 1e-5 && std::fabs(double(ymin)) < 1e-5) {
        ymin = -1.0f;
        ymax = 1.0f;
    }

    std::stringstream ss;
    for (std::size_t i = 0; i < element.xdata.size(); i++) {
        ss << std::to_string(denormalize<float>(
            normalize<float>(element.xdata[i], xmin, xmax), 0.0, float(wplot)))
           << " "
           << std::to_string(denormalize<float>(
                  normalize<float>(element.ydata[i], ymin, ymax), 0.0, float(hplot)))
           << ((i != element.xdata.size() - 1) ? "," : "");
    }
    polyline.put("<xmlattr>.points", ss.str());
    svgPlot.add_child("polyline", polyline);

    /* bounding box plot */
    boost::property_tree::ptree bbPlot;
    bbPlot.put("<xmlattr>.width", "100%");
    bbPlot.put("<xmlattr>.height", "100%");
    bbPlot.put("<xmlattr>.stroke-width", 2);
    bbPlot.put("<xmlattr>.stroke", hex(Black));
    bbPlot.put("<xmlattr>.fill", "none");
    svgPlot.add_child("rect", bbPlot);

    /* bounding box container */
    boost::property_tree::ptree bbBorder;
    bbBorder.put("<xmlattr>.width", "100%");
    bbBorder.put("<xmlattr>.height", "100%");
    bbBorder.put("<xmlattr>.stroke-width", 2);
    bbBorder.put("<xmlattr>.stroke", hex(Black));
    bbBorder.put("<xmlattr>.fill", "none");
    svgBorder.add_child("rect", bbBorder);

    /* xticks */
    for (std::size_t i = 0; i <= xnticks; i++) {
        auto x = denormalize<float>(float(i) / float(xnticks), 0, float(wplot));
        auto y = hplot;

        boost::property_tree::ptree ticklongline;
        ticklongline.put("<xmlattr>.x1", x);
        ticklongline.put("<xmlattr>.x2", x);
        ticklongline.put("<xmlattr>.y1", y);
        ticklongline.put("<xmlattr>.y2", y - 5);
        ticklongline.put("<xmlattr>.stroke", "black");
        svgPlot.add_child("line", ticklongline);

        boost::property_tree::ptree ticklabel;
        std::stringstream ss;
        ss << std::fixed << std::scientific << std::setprecision(tickPrecision)
           << denormalize<float>(float(i) / xnticks, xmin, xmax);
        ticklabel.put("", ss.str());
        ticklabel.put("<xmlattr>.font-family", "Arial");
        ticklabel.put("<xmlattr>.font-size", 8);
        ticklabel.put("<xmlattr>.text-anchor", "middle");
        ticklabel.put("<xmlattr>.x", x + element.xplot);
        ticklabel.put("<xmlattr>.y", hplot + element.yplot + element.yplot / 4);
        svgBorder.add_child("text", ticklabel);
    }

    /* yticks */
    for (std::size_t i = 0; i <= ynticks; i++) {
        auto x = 0;
        auto y = hplot - denormalize<float>(float(i) / float(ynticks), 0, hplot);
        boost::property_tree::ptree ticklongline;
        ticklongline.put("<xmlattr>.x1", x);
        ticklongline.put("<xmlattr>.x2", x + 5);
        ticklongline.put("<xmlattr>.y1", y);
        ticklongline.put("<xmlattr>.y2", y);
        ticklongline.put("<xmlattr>.stroke", "black");
        svgPlot.add_child("line", ticklongline);

        boost::property_tree::ptree ticklabel;
        std::stringstream ss;
        ss << std::fixed << std::scientific << std::setprecision(tickPrecision)
           << denormalize<float>(float(i) / ynticks, ymin, ymax);
        ticklabel.put("", ss.str());
        ticklabel.put("<xmlattr>.font-family", "Arial");
        ticklabel.put("<xmlattr>.font-size", 8);
        ticklabel.put("<xmlattr>.dominant-baseline", "middle");
        ticklabel.put("<xmlattr>.x", x + element.xplot - 5 * element.xplot / 12);
        ticklabel.put("<xmlattr>.y", y + element.yplot);
        svgBorder.add_child("text", ticklabel);
    }

    /* title */
    boost::property_tree::ptree title;
    title.put("", element.title);
    title.put("<xmlattr>.font-family", "Arial");
    title.put("<xmlattr>.font-size", 16);
    title.put("<xmlattr>.text-anchor", "middle");
    title.put("<xmlattr>.dominant-baseline", "middle");
    title.put("<xmlattr>.x", element.w / 2);
    title.put("<xmlattr>.y", element.yplot / 2);
    svgBorder.add_child("text", title);

    /* title */
    boost::property_tree::ptree xlabel;
    xlabel.put("", element.xlabel);
    xlabel.put("<xmlattr>.font-family", "Arial");
    xlabel.put("<xmlattr>.font-size", 12);
    xlabel.put("<xmlattr>.text-anchor", "middle");
    xlabel.put("<xmlattr>.dominant-baseline", "middle");
    xlabel.put("<xmlattr>.x", element.w / 2);
    xlabel.put("<xmlattr>.y", hplot + element.yplot + 2 * element.yplot / 3);
    svgBorder.add_child("text", xlabel);

    boost::property_tree::ptree ylabel;
    ylabel.put("", element.ylabel);
    ylabel.put("<xmlattr>.font-family", "Arial");
    ylabel.put("<xmlattr>.font-size", 12);
    ylabel.put("<xmlattr>.text-anchor", "middle");
    ylabel.put("<xmlattr>.dominant-baseline", "middle");
    auto xylabel = element.xplot / 4;
    auto yylabel = element.yplot + hplot / 2;
    ylabel.put("<xmlattr>.x", xylabel);
    ylabel.put("<xmlattr>.y", yylabel);
    ylabel.put("<xmlattr>.transform", "rotate(-90, " + std::to_string(xylabel) + ", " + std::to_string(yylabel) + ")");
    svgBorder.add_child("text", ylabel);

    /* combine */
    svgBorder.add_child("svg.svg", svgPlot);
    svg.add_child("svg.svg", svgBorder);
}
} // namespace grafiek
