#ifndef MODEL_H
#define MODEL_H

#include <QObject>
#include <QSqlQueryModel>

class Model : public QSqlQueryModel
{
    Q_OBJECT
public:
    // List all the roles that will be used in the TableView
    enum Roles {
        IDRole = Qt::UserRole + 1,
        TitleRole,
        PoemRole,
        GrpRole
    };

    explicit Model(QObject *parent = 0);

    // Override the method that will return the data
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

protected:
    /* hashed table of roles for speakers.
     * The method used in the wilds of the base class QAbstractItemModel,
     * from which inherits the class QSqlQueryModel
     * */
    QHash<int, QByteArray> roleNames() const;

signals:

public slots:
};

#endif // MODEL_H
