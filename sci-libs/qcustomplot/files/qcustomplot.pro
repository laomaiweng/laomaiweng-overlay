# ------------------------------------------------------------------------------
# qcustomplot.pro
# ------------------------------------------------------------------------------


TARGET = qcustomplot
TEMPLATE = lib
CONFIG += shared release

QMAKE_TARGET_PRODUCT = "QCustomPlot"
QMAKE_TARGET_DESCRIPTION = "A Qt C++ widget for plotting"
QMAKE_TARGET_COMPANY = "www.qcustomplot.com"
QMAKE_TARGET_COPYRIGHT = "Copyright (C) by Emanuel Eichhammer"

QT      += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

DEFINES += QCUSTOMPLOT_COMPILE_LIBRARY

HEADERS += qcustomplot.h
SOURCES += qcustomplot.cpp
