#ifndef MVARIABLES_H
#define MVARIABLES_H

#include <QObject>
#include <QSqlQuery>
#include "model.h"



class mVariables : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString var_1 READ var_1 WRITE setVar_1 NOTIFY var_1Changed)
public:
    explicit mVariables(QObject *parent = 0);
    QString var_1() const {return var1;}
    void setVar_1(QString value);
    QString var1;
    Model *model_1;

signals:
    void var_1Changed();
    void changeTitle();
public slots:
    void onchangeTitle(QString value);
private:

};

#endif // MVARIABLES_H
