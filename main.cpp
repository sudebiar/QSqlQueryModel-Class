#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <database.h>
#include <model.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // Initialize database
    DataBase database;
    // We declare and initialize the data model representation
    Model *model = new Model();
    /* Since we inherited from QSqlQueryModel, the data sample,
     * we need to perform SQL-query in which we select all the needed fields from the desired table to us
     * */
    model->setQuery("SELECT " TABLE_ID ", " TABLE_TITLE ", " TABLE_POEM ", " TABLE_GRP
                   " FROM " TABLE);

    /* And it is already familiar from the lessons of the signals and slots in QML.
     * We put the resulting model in QML context to be able to refer to the model name "myModel"
     * */
    engine.rootContext()->setContextProperty("myModel", model);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
