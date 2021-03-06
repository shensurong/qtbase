TARGET = composeplatforminputcontextplugin

QT += core-private gui-private

SOURCES += $$PWD/qcomposeplatforminputcontextmain.cpp \
           $$PWD/qcomposeplatforminputcontext.cpp \
           $$PWD/generator/qtablegenerator.cpp \

HEADERS += $$PWD/qcomposeplatforminputcontext.h \
           $$PWD/generator/qtablegenerator.h \

QMAKE_USE_PRIVATE += xkbcommon

include($$OUT_PWD/../../../gui/qtgui-config.pri)

DEFINES += X11_PREFIX='\\"$$QMAKE_X11_PREFIX\\"'

OTHER_FILES += $$PWD/compose.json

PLUGIN_TYPE = platforminputcontexts
PLUGIN_EXTENDS = -
PLUGIN_CLASS_NAME = QComposePlatformInputContextPlugin
load(qt_plugin)
