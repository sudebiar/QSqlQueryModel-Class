#include "database.h"
#include <QMessageBox>

DataBase::DataBase(QObject *parent) : QObject(parent)
{
    this->connectToDataBase();

}

DataBase::~DataBase(){

    //delete ui;
}

bool DataBase::connectToDataBase()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("/home/behruz/Desktop/Temp/QSqlQueryModeTableView/Poem.db");
    if (!db.open()) {
        QMessageBox::critical(nullptr, QObject::tr("Cannot open database"),
            QObject::tr("Unable to establish a database connection.\n"
                        "This example needs SQLite support. Please read "
                        "the Qt SQL driver documentation for information how "
                        "to build it.\n\n"
                        "Click Cancel to exit."), QMessageBox::Cancel);
        return false;
    }

    return true;
}
