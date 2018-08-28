#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <mvariables.h>
#include <QSqlQuery>



#include <database.h>
#include <model.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;




    DataBase database;

    mVariables myvar;
    auto root_contex = engine.rootContext();
    root_contex->setContextProperty("mVarClass",&myvar);



    Model *model_1 = new Model();


    Model *model = new Model();

    model->setQuery("SELECT " TABLE_ID ", " TABLE_TITLE ", " TABLE_POEM ", " TABLE_GRP
                   " FROM " TABLE);

//    model_1->setQuery(myvar.qry);

    engine.rootContext()->setContextProperty("myPoem", myvar.model_1);

    engine.rootContext()->setContextProperty("myModel", model);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
