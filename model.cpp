#include "model.h"

Model::Model(QObject *parent) :
    QSqlQueryModel(parent)
{

}

// The method for obtaining data from the model
QVariant Model::data(const QModelIndex & index, int role) const {

    // Define the column number, address, so to speak, on the role of number
    int columnId = role - Qt::UserRole - 1;
    // Create the index using the ID column
    QModelIndex modelIndex = this->index(index.row(), columnId);

    /* And with the help of already data() method of the base class
     * to take out the data table from the model
     * */
    return QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
}

QHash<int, QByteArray> Model::roleNames() const {

    QHash<int, QByteArray> roles;
    roles[IDRole] = "ID";
    roles[TitleRole] = "Title";
    roles[PoemRole] = "Poem";
    roles[GrpRole] = "Grp";
    return roles;
}

