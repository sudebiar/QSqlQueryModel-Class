TEMPLATE = app

QT += qml quick widgets sql
CONFIG += c++11

SOURCES += main.cpp \
    database.cpp \
    model.cpp \
    mvariables.cpp

RESOURCES += qml.qrc \
    assets.qrc

#ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

# deployment.files += Poem.db
# deployment.path = /assets
# INSTALLS += deployment

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

android
{
my_files.path = /assets
my_files.files = $$PWD/android/*
INSTALLS += my_files
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    database.h \ 
    database.h \
    model.h \
    mvariables.h

FORMS +=

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat


