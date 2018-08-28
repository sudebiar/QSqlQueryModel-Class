#include "mvariables.h"
#include <QSqlQuery>



mVariables::mVariables(QObject *parent) : QObject(parent)
{

        model_1 = new Model();
}

void mVariables::setVar_1(QString value){
    var1 = value;
    emit var_1Changed();

}

void mVariables::onchangeTitle(QString value)
{

    QSqlQuery qry;
    qry.prepare("SELECT * From Poems where Title = ?");
    qry.addBindValue(value);
    qry.exec();
    model_1->setQuery(qry);



}
