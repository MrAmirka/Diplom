#ifndef ACCOUNTVALIDATOR_H
#define ACCOUNTVALIDATOR_H

#include <QObject>

class AccountValidator : public QObject
{
    Q_OBJECT
public:
    explicit AccountValidator(QObject *parent = nullptr);
    Q_INVOKABLE void getHash(QString login, QString password);

signals:
    void HashGenerated(QString hash);

public slots:
    void HashChecked(QString response);
};

#endif // ACCOUNTVALIDATOR_H
