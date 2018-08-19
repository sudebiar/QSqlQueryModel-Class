#ifndef DATABASE_H
#define DATABASE_H

#include <QObject>
#include <qsql.h>
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlDatabase>
#include <QFile>
#include <QDate>
#include <QDebug>

#define DATABASE_HOSTNAME   "ExampleDataBase"
#define DATABASE_NAME       "Poem.db"

#define TABLE                   "Poems"
#define TABLE_ID                "ID"
#define TABLE_TITLE              "Title"
#define TABLE_POEM               "Poem"
#define TABLE_GRP                 "Grp"

class DataBase : public QObject
{
    Q_OBJECT
public:
    static bool connectToDataBase();
    explicit DataBase(QObject *parent = 0);
    ~DataBase();
};








#endif // DATABASE_H

