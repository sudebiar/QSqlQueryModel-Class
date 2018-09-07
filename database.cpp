#include "database.h"
#include <QMessageBox>
#include <QStandardPaths>
DataBase::DataBase(QObject *parent) : QObject(parent)
{
    this->connectToDataBase();

}

DataBase::~DataBase(){

    //delete ui;
}

bool DataBase::connectToDataBase()
{
//    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
//    db.setDatabaseName("/home/behruz/Desktop/Temp/QSqlQueryModeTableView/Poem.db");
//    if (!db.open()) {
//        QMessageBox::critical(nullptr, QObject::tr("Cannot open database"),
//            QObject::tr("Unable to establish a database connection.\n"
//                        "This example needs SQLite support. Please read "
//                        "the Qt SQL driver documentation for information how "
//                        "to build it.\n\n"
//                        "Click Cancel to exit."), QMessageBox::Cancel);
//        return false;
//    }

//    return true;

//    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
//    db.setDatabaseName("/home/behruz/Desktop/Temp/QSqlQueryModeTableView/Poem.db");
//    if (!db.open()) {
//        QMessageBox::critical(nullptr, QObject::tr("Cannot open database"),
//            QObject::tr("Unable to establish a database connection.\n"
//                        "This example needs SQLite support. Please read "
//                        "the Qt SQL driver documentation for information how "
//                        "to build it.\n\n"
//                        "Click Cancel to exit."), QMessageBox::Cancel);
//        return false;
//    }
//    QFile dfile("./Poem.db");
//    if (dfile.exists())
//    {
//        dfile.copy("./Poem.db");
//        QFile::setPermissions("./Poem.db",QFile::WriteOwner |     QFile::ReadOwner);
//     }

    QFile DbFile;
    QString DatabaseDataStoragePath = QStandardPaths::writableLocation(QStandardPaths::StandardLocation::AppDataLocation);
    DbFile.setFileName("assets:/Poem.db");
    DbFile.copy(DatabaseDataStoragePath + "/Poem.db");
    QFile::setPermissions(DatabaseDataStoragePath + "/Poem.db", QFile::WriteOwner | QFile::ReadOwner);

        QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
        db.setDatabaseName("Poem.db");
        if (!db.open()) {
            QMessageBox::critical(nullptr, QObject::tr("Cannot open database"),
                QObject::tr("Unable to establish a database connection.\n"
                            "This example needs SQLite support. Please read "
                            "the Qt SQL driver documentation for information how "
                            "to build it.\n\n"
                            "Click Cancel to exit."), QMessageBox::Cancel);
            return false;
        }
}
