#include "accountvalidator.h"
#include <QDebug>

AccountValidator::AccountValidator(QObject *parent) : QObject(parent)
{

}

void AccountValidator::getHash(QString login, QString password)
{
    qDebug() << "jopa";
    emit HashGenerated(login+password);
}

void AccountValidator::HashChecked(QString response)
{

}
